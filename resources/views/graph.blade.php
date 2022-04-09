<head>
    <style> body { margin: 0; } </style>

    <script src="//unpkg.com/3d-force-graph"></script>
    <script src="https://unpkg.com/neo4j-driver"></script>
    <!--<script src="../../dist/3d-force-graph.js"></script>-->
</head>

<body>
<div id="3d-graph"></div>

<script>
    const elem = document.getElementById('3d-graph');
    const driver = neo4j.driver("bolt://demo.neo4jlabs.com", neo4j.auth.basic("gameofthrones", "gameofthrones"),{encrypted: true});
    const session = driver.session({database:"gameofthrones"});
    const start = new Date();
    session
        .run('MATCH (n)-[r:INTERACTS1]->(m) RETURN { id: id(n), label:head(labels(n)), community:n.louvain, caption:n.name, size:n.pagerank } as source, { id: id(m), label:head(labels(m)), community:n.louvain, caption:m.name, size:m.pagerank } as target, {weight:r.weight, type:type(r), community:case when n.community < m.community then n.community else m.community end} as rel LIMIT $limit', {limit: neo4j.int(5000)})
        .then(function (result) {
            const nodes = {}
            const links = result.records.map(r => {
                var source = r.get('source');source.id = source.id.toNumber();
                nodes[source.id] = source;
                var target = r.get('target');target.id = target.id.toNumber();
                nodes[target.id] = target;
                var rel = r.get('rel'); if (rel.weight) { rel.weight = rel.weight.toNumber(); }
                return Object.assign({source:source.id,target:target.id}, rel);
            });
            session.close();
            console.log(links.length+" links loaded in "+(new Date()-start)+" ms.")
            const gData = { nodes: Object.values(nodes), links: links}
            const Graph = ForceGraph3D()(elem)
                .graphData(gData)
                .nodeAutoColorBy('community')
                .nodeVal('size')
                .linkAutoColorBy('community')
                .linkWidth(0)
                .linkDirectionalParticles('weight')
                .linkDirectionalParticleSpeed('weight')
                .nodeLabel(node => `${node.label}: ${node.caption}`)
                .onNodeHover(node => elem.style.cursor = node ? 'pointer' : null);
        })
        .catch(function (error) {
            console.log(error);
        });
</script>
</body>
