///initGlobalPartMap();

global.particleMap = ds_map_create();
global.particleSystemMap = ds_map_create();
global.particleEmitterMap = ds_map_create();

//Global systems
global.enemySpawnSystem = part_system_create();
bloom_attachParticleSystem( global.enemySpawnSystem, BLOOM_DEPTH );
distortionGlow_attachParticleSystem( global.enemySpawnSystem );
refraction_attachParticleSystem( global.enemySpawnSystem );
dispersion_attachParticleSystem( global.enemySpawnSystem );


particleDef_pickups();
particleDef_enemyBody();
