import * as THREE from 'three';

import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls';
import { ParametricGeometry } from "three/examples/jsm/geometries/ParametricGeometry";
import { GUI } from 'dat.gui';

var scene;
var camera;
var render;
var webglRender;
//var canvasRender;
var controls;
var guiParams;

var ground;
var paramMesh;

var meshMaterial;

var ambientLight;
var spotLight;
var axesHelper;
//var cameraHelper;

document.addEventListener('DOMContentLoaded', function() {
    scene = new THREE.Scene();

    webglRender = new THREE.WebGLRenderer( {antialias: true, alpha: true} ); // antialias antialiasing
    webglRender.setSize(window.innerWidth, window.innerHeight);
    webglRender.setClearColor(0xeeeeee, 1.0);
    webglRender.shadowMap.enabled = true; // Allow shadow casting
    render = webglRender;

    camera = new THREE.PerspectiveCamera(45, window.innerWidth / window.innerHeight, 0.01, 1000); // 2147483647
    camera.position.set(-45.5, 68.2, 90.9);

    var target = new THREE.Vector3(10, 0 , 0);
    controls = new OrbitControls(camera, render.domElement);
    controls.target = target;
    camera.lookAt(target);

    document.querySelector('#container').append(render.domElement); // .appendChild(render.domElement);
    window.addEventListener('resize', onWindowResize, false);

    // Add a coordinate axis: X (orange), Y (green), Z (blue)
    axesHelper = new THREE.AxesHelper(60);
    scene.add(axesHelper);

    ambientLight = new THREE.AmbientLight(0x0c0c0c);
    scene.add(ambientLight);

    spotLight = new THREE.SpotLight(0xffffff);
    spotLight.position.set(-20, 250, -50);
    spotLight.target.position.set(30, -40, -20);
    spotLight.shadow.mapSize.width = 5120; // Must be a power of 2, the default value is 512
    spotLight.shadow.mapSize.height = 5120; // Must be a power of 2, the default value is 512
    spotLight.intensity = 0.3;
    spotLight.castShadow = true;
    scene.add(spotLight);
    //cameraHelper = new THREE.CameraHelper(spotLight.shadow.camera);
    //scene.add(cameraHelper);

    // add a ground
    var groundGeometry = new THREE.PlaneGeometry(100, 100, 4, 4);
    var groundMaterial = new THREE.MeshLambertMaterial({color: 0x777777}); // MeshBasicMaterial material cannot receive shadows
    ground = new THREE.Mesh(groundGeometry, groundMaterial);
    ground.rotation.set(-0.5 * Math.PI, 0, 0); // Rotate -90° along the X axis
    ground.receiveShadow = true;
    scene.add(ground);

    /** Used to save those variables that need to be modified */
    guiParams = new function() {
        this.rotationSpeed = 0.02;

        this.slices = 120;
        this.stacks = this.slices;
    }
    /** Define the dat.GUI object and bind several properties of guiParams */
    var gui = new GUI();
    gui.add(guiParams, "slices", 0, 120, 1).onChange(function(e){updateMesh()});
    gui.add(guiParams, "stacks", 0, 120, 1).onChange(function(e){updateMesh()});

    updateMesh();

    renderScene();
});

/** Render the scene */
function renderScene() {
    rotateMesh(); // rotate the object

    requestAnimationFrame(renderScene);
    render.render(scene, camera);
}

/** Triggered when the browser window size changes */
function onWindowResize() {
    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();
    render.setSize(window.innerWidth, window.innerHeight);
}

/** Rotate object */
var step = 0;
function rotateMesh() {
    step += guiParams.rotationSpeed;
    scene.traverse(function(mesh) {
        if (mesh === paramMesh) {
            //mesh.rotation.x = step;
            mesh.rotation.y = step;
            //mesh.rotation.z = step;
        }
    });
}

function updateMesh() {
    scene.remove(paramMesh);

    // define paramMesh
    var paramGeometry = new ParametricGeometry(radialWave, guiParams.slices, guiParams.stacks);
    var paramMaterial = new THREE.MeshPhongMaterial({color: 0x3399ff, shininess: 40, specular: 0xaaaafff, side: THREE.DoubleSide});
    paramMesh = new THREE.Mesh(paramGeometry, paramMaterial);
    paramMesh.position.set(0, 10, 0);

    scene.add(paramMesh);
}

function radialWave(u, v) {
    var r = 50;
    var x = Math.sin(u) * r;
    var z = Math.sin(v / 2) * 2 * r;
    var y = ( Math.sin(u * 4 * Math.PI) + Math.cos(v * 2 * Math.PI) ) * 2.8;
    return new THREE.Vector3(x, y, z);
}
