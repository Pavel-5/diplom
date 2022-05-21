import * as THREE from 'three';
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls';
import { MeshLine, MeshLineMaterial, MeshLineRaycast } from 'three.meshline';

var scene = new THREE.Scene();
var camera = new THREE.PerspectiveCamera(60, window.innerWidth / window.innerHeight, 1, 1000);
camera.position.set(-4, 2, 5);
var renderer = new THREE.WebGLRenderer({
    antialias: true
});
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

var controls = new OrbitControls(camera, renderer.domElement);

var planeGeom = new THREE.PlaneBufferGeometry(10, 4, 20, 20);
planeGeom.rotateX(-Math.PI * 0.5);
var v = new THREE.Vector3();
var positions = planeGeom.attributes.position;
console.log(planeGeom.attributes.position.getX(1), positions.getX(1));
for (var i = 0; i < positions.count; i++) {
    v.fromBufferAttribute(positions, i);
    positions.setY(i, (-(v.x * v.x) - (2 * v.z * v.z)) * 0.25);
}
console.log(planeGeom.attributes.position.getX(1), positions.getX(1));
planeGeom.center();
planeGeom.computeVertexNormals();

var ellipticParaboloidSurface = new THREE.Mesh(planeGeom, new THREE.MeshNormalMaterial({
    side: THREE.DoubleSide
}));
scene.add(ellipticParaboloidSurface);

var boxHelper = new THREE.BoxHelper(ellipticParaboloidSurface, "yellow");
scene.add(boxHelper);

var axesHelper = new THREE.AxesHelper( 5 );
scene.add( axesHelper );

var dir = new THREE.Vector3( 10, 0, 0 );

// normalize the direction vector (convert to vector of length 1)
// нормализуем вектор направления (конвертируем в вектор единичной длины)
dir.normalize();

var origin = new THREE.Vector3( 4, 0, 0 );
var length = 1;
var hex = 'red';

var arrowHelper = new THREE.ArrowHelper( dir, origin, length, hex );
scene.add( arrowHelper );

renderer.setAnimationLoop(() => {
    renderer.render(scene, camera);
})
