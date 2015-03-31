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
    
    
    global.enemyWeaponSystem = part_system_create();
    part_system_depth( global.enemyWeaponSystem, PARTICLE_DEPTH );
    bloom_attachParticleSystem( global.enemyWeaponSystem, BLOOM_DEPTH );
    distortionGlow_attachParticleSystem( global.enemyWeaponSystem );
    refraction_attachParticleSystem( global.enemyWeaponSystem );
    dispersion_attachParticleSystem( global.enemyWeaponSystem );
    part_system_automatic_draw( global.enemyWeaponSystem, true );

    global.playerEffectsSystem = part_system_create();
    part_system_depth( global.playerEffectsSystem, PARTICLE_DEPTH );
    bloom_attachParticleSystem( global.playerEffectsSystem, BLOOM_DEPTH );
    distortionGlow_attachParticleSystem( global.playerEffectsSystem );
    refraction_attachParticleSystem( global.playerEffectsSystem );
    dispersion_attachParticleSystem( global.playerEffectsSystem );
    part_system_automatic_draw( global.playerEffectsSystem, true );


particleDef_ambBackground();
particleDef_genericDamage();
particleDef_player();

particleDef_pickups();
particleDef_enemyBody();
particleDef_enemyBodyBlue();
particleDef_enemyBodyGreen();
particleDef_enemyBullet();
particleDef_enemyLaser();
