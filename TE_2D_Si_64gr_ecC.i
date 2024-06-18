[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 30
  ny = 30
  # nz = 30
  xmax = 160e-9
  ymax = 160e-9
  # zmax = 100e-9
  elem_type = QUAD4
[]

[GlobalParams]
  op_num = 64
  grain_num = 64
  var_name_base = gr
  int_width = 1.15e-9
[]

[AuxVariables]
  [./bnds]
    order = FIRST
    family = LAGRANGE
  [../]
  [./q_x]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./q_y]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./q_z]
    order = CONSTANT
    family = MONOMIAL
  [../]
[]

[AuxKernels]
  [bnds]
    type = BndsCalcAux
    variable = bnds
    # v = 'gr0 gr1 gr2 gr3 gr4 gr5 gr6 gr7 gr8 gr9 gr10 gr11 gr12 gr13 gr14 gr15 gr16 gr17 gr18 gr19 gr20 gr21 gr22 gr23 gr24'
    v = 'gr0 gr1 gr2 gr3 gr4 gr5 gr6 gr7 gr8 gr9 gr10 gr11 gr12 gr13 gr14 gr15 gr16 gr17 gr18 gr19 gr20 gr21 gr22 gr23 gr24 gr25 gr26 gr27 gr28 gr29 gr30 gr31 gr32 gr33 gr34 gr35 gr36 gr37 gr38 gr39 gr40 gr41 gr42 gr43 gr44 gr45 gr46 gr47
     gr48 gr49 gr50 gr51 gr52 gr53 gr54 gr55 gr56 gr57 gr58 gr59 gr60 gr61 gr62 gr63'
      # v = 'gr0 gr1 gr2 gr3 gr4 gr5 gr6 gr7 gr8 gr9 gr10 gr11 gr12 gr13 gr14 gr15 gr16 gr17 gr18 gr19 gr20 gr21 gr22 gr23 gr24 gr25 gr26 gr27 gr28 gr29 gr30 gr31 gr32 gr33 gr34 gr35 gr36 gr37 gr38 gr39 gr40 gr41 gr42 gr43 gr44 gr45 gr46 gr47
      #  gr48 gr49 gr50 gr51 gr52 gr53 gr54 gr55 gr56 gr57 gr58 gr59 gr60 gr61 gr62 gr63 gr64 gr65 gr66 gr67 gr68 gr69 gr70 gr71 gr72 gr73 gr74 gr75 gr76 gr77 gr78 gr79 gr80 gr81 gr82 gr83 gr84 gr85 gr86 gr87 gr88 gr89 gr90 gr91 gr92 gr93 gr94
      #   gr95 gr96 gr97 gr98 gr99'
    execute_on = 'INITIAL'
  []
  [./Elflux_x]
    type = FourierHeat
    variable = q_x
    T = 'T'
    thC = 'thC'
    component = 0
    [../]
  [./Elflux_y]
    type = FourierHeat
    variable = q_y
    T = 'T'
    thC = 'thC'
    component = 1
    [../]
  # [./Elflux_z]
  #   type = FourierHeat
  #   variable = q_z
  #   T = 'T'
  #   thC = 'thC'
  #   component = 2
  #   [../]
[]

[Variables]
  [./PolycrystalVariables]
  [../]

  [./T]
    order = FIRST
    family = LAGRANGE
    initial_condition = 0.001
  [../]
[]


  [ICs]
  [./PolycrystalICs]
    [./PolycrystalColoringIC]
      polycrystal_ic_uo = voronoi_ic
  [../]
  []

  [./bnds]
    type = BndsCalcIC
    variable = bnds
  [../]
[]


[Kernels]
  [./HtCond] #Kernel for direct calculation of thermal cond
    type = HeatConduction
    variable = T
    diffusion_coefficient = thC
  [../]
  [gr0]
    type = TimeDerivative
    variable = gr0
  []
  [gr1]
    type = TimeDerivative
    variable = gr1
  []
  [gr2]
    type = TimeDerivative
    variable = gr2
  []
  [gr3]
    type = TimeDerivative
    variable = gr3
  []
  [gr4]
    type = TimeDerivative
    variable = gr4
  []
  [gr5]
    type = TimeDerivative
    variable = gr5
  []
  [gr6]
    type = TimeDerivative
    variable = gr6
  []
  [gr7]
    type = TimeDerivative
    variable = gr7
  []
  [gr8]
    type = TimeDerivative
    variable = gr8
  []
  [gr9]
    type = TimeDerivative
    variable = gr9
  []
  [gr10]
    type = TimeDerivative
    variable = gr10
  []
  [gr11]
    type = TimeDerivative
    variable = gr11
  []
  [gr12]
    type = TimeDerivative
    variable = gr12
  []
  [gr13]
    type = TimeDerivative
    variable = gr13
  []
  [gr14]
    type = TimeDerivative
    variable = gr14
  []
  [gr15]
    type = TimeDerivative
    variable = gr15
  []
  [gr16]
    type = TimeDerivative
    variable = gr16
  []
  [gr17]
    type = TimeDerivative
    variable = gr17
  []
  [gr18]
    type = TimeDerivative
    variable = gr18
  []
  [gr19]
    type = TimeDerivative
    variable = gr19
  []
  [gr20]
    type = TimeDerivative
    variable = gr20
  []
  [gr21]
    type = TimeDerivative
    variable = gr21
  []
  [gr22]
    type = TimeDerivative
    variable = gr22
  []
  [gr23]
    type = TimeDerivative
    variable = gr23
  []
  [gr24]
    type = TimeDerivative
    variable = gr24
  []
  [gr25]
    type = TimeDerivative
    variable = gr25
  []
  [gr26]
    type = TimeDerivative
    variable = gr26
  []
  [gr27]
    type = TimeDerivative
    variable = gr27
  []
  [gr28]
    type = TimeDerivative
    variable = gr28
  []
  [gr29]
    type = TimeDerivative
    variable = gr29
  []
  [gr30]
    type = TimeDerivative
    variable = gr30
  []
  [gr31]
    type = TimeDerivative
    variable = gr31
  []
  [gr32]
    type = TimeDerivative
    variable = gr32
  []
  [gr33]
    type = TimeDerivative
    variable = gr33
  []
  [gr34]
    type = TimeDerivative
    variable = gr34
  []
  [gr35]
    type = TimeDerivative
    variable = gr35
  []
  [gr36]
    type = TimeDerivative
    variable = gr36
  []
  [gr37]
    type = TimeDerivative
    variable = gr37
  []
  [gr38]
    type = TimeDerivative
    variable = gr38
  []
  [gr39]
    type = TimeDerivative
    variable = gr39
  []
  [gr40]
    type = TimeDerivative
    variable = gr40
  []
  [gr41]
    type = TimeDerivative
    variable = gr41
  []
  [gr42]
    type = TimeDerivative
    variable = gr42
  []
  [gr43]
    type = TimeDerivative
    variable = gr43
  []
  [gr44]
    type = TimeDerivative
    variable = gr44
  []
  [gr45]
    type = TimeDerivative
    variable = gr45
  []
  [gr46]
    type = TimeDerivative
    variable = gr46
  []
  [gr47]
    type = TimeDerivative
    variable = gr47
  []
  [gr48]
    type = TimeDerivative
    variable = gr48
  []
  [gr49]
    type = TimeDerivative
    variable = gr49
  []
  [gr50]
    type = TimeDerivative
    variable = gr50
  []
  [gr51]
    type = TimeDerivative
    variable = gr51
  []
  [gr52]
    type = TimeDerivative
    variable = gr52
  []
  [gr53]
    type = TimeDerivative
    variable = gr53
  []
  [gr54]
    type = TimeDerivative
    variable = gr54
  []
  [gr55]
    type = TimeDerivative
    variable = gr55
  []
  [gr56]
    type = TimeDerivative
    variable = gr56
  []
  [gr57]
    type = TimeDerivative
    variable = gr57
  []
  [gr58]
    type = TimeDerivative
    variable = gr58
  []
  [gr59]
    type = TimeDerivative
    variable = gr59
  []
  [gr60]
    type = TimeDerivative
    variable = gr60
  []
  [gr61]
    type = TimeDerivative
    variable = gr61
  []
  [gr62]
    type = TimeDerivative
    variable = gr62
  []
  [gr63]
    type = TimeDerivative
    variable = gr63
  []
[]

[Materials]

  [./thcond] #The equation defining the thermal conductivity is defined here, using two ifs
      # The k in the bulk is k_b, in the precipitate k_p2, and across the interaface k_int
      type = ParsedMaterial
      block = 0
      # constant_names = 'length_scale k_b k_p2 k_int'
      constant_names = 'length_scale k_b k_int'
      constant_expressions = '1 2.84e5 0.5e5'# # k_p2 = Si, averaged value taken from Liu et al. k_b = AlO2, value taken from Decoster et al, k_int = SiO2 taken fro Hu He eta al, nature paper. All uints W/(m.K)
      # function = 'sk_b:= length_scale*k_b; sk_p2:= length_scale*k_p2; sk_int:= k_int*length_scale; if(bnds>0.1,if(bnds>0.95,sk_p2,sk_int),sk_b)' ##constant parameters
      function = 'sk_b:= length_scale*k_b; sk_int:= length_scale*k_int; if(bnds>0.9,sk_b,sk_int)' ##constant parameters
      # function = 'sk_b:= length_scale*(0.4043 + 0.004856*T - 1.964e-6*T*T); sk_p2:= length_scale*(138.5 - 0.3532*T + 0.0003*T*T); sk_int:= (0.5156 + 0.01209*T - 2.406e-5*T*T + 1.562e-8*T*T*T)*length_scale; if(phase2>0.1,if(phase2>0.95,sk_p2,sk_int),sk_b)' ##T-dep parameters
      outputs = exodus
      f_name = thC
      # args = 'phase2 T'
      args = 'bnds'
      # T = 'T'
    [../]
[]

[UserObjects]
  [./voronoi_ic]
    type = PolycrystalVoronoi
    coloring_algorithm = bt
    # rand_seed = 100
  [../]
  # [./grain_tracker]
  #   type = GrainTracker
  #   threshold = 0.2
  #   # verbosity_level = 1
  #   # connecting_threshold = 0.08
  #   # compute_var_to_feature_map = true
  #   # compute_halo_maps = true # For displaying HALO fields
  #   # polycrystal_ic_uo = voronoi
  #   execute_on = 'initial timestep_end'
  # [../]
[]

[BCs]
  # [./left_flux] #Fix heat flux on the left side
  #   type = NeumannBC
  #   variable = T
  #   boundary = left
  #   value = 1.15e10
  # [../]
  [./left_T]
    type = DirichletBC
    variable = T
    boundary = left
    value = 0.001
  [../]
  [./right_T] #Fix temperature on the left side
    type = DirichletBC
    variable = T
    boundary = right
    value = 0
  [../]
  [./top_T] #Fix heat flux on the left side
    type = NeumannBC
    variable = T
    boundary = top
    value = 0
  [../]
  [./bottom_T] #Fix temperature on the left side
    type = NeumannBC
    variable = T
    boundary = bottom
    value = 0
  [../]
  # [./Periodic]
  #   [./all]
  #     auto_direction = 'x y'
  #     variable = 'gr0 gr1 gr2 gr3 gr4 gr5 gr6 gr7 gr8 gr9 gr10 gr11 gr12 gr13 gr14 gr15 gr16 gr17 gr18 gr19 gr20 gr21 gr22 gr23 gr24 gr25 gr26 gr27 gr28 gr29 gr30 gr31 gr32 gr33 gr34 gr35 gr36 gr37 gr38 gr39 gr40 gr41 gr42 gr43 gr44 gr45 gr46 gr47
  #      gr48 gr49 gr50 gr51 gr52 gr53 gr54 gr55 gr56 gr57 gr58 gr59 gr60 gr61 gr62 gr63 gr64 gr65 gr66 gr67 gr68 gr69 gr70 gr71 gr72 gr73 gr74 gr75 gr76 gr77 gr78 gr79 gr80 gr81 gr82 gr83 gr84 gr85 gr86 gr87 gr88 gr89 gr90 gr91 gr92 gr93 gr94
  #       gr95 gr96 gr97 gr98 gr99'
  #   [../]
  # [../]
[]

[Executioner]
  type = Transient
  # scheme = 'bdf2'
  solve_type = 'PJFNK'
  petsc_options_iname = '-pc_type -pc_hypre_type -ksp_gmres_restart -pc_hypre_boomeramg_strong_threshold'
  petsc_options_value = 'hypre boomeramg 31 0.7'
  l_tol = 1.0e-8
  l_max_its = 30
  nl_max_its = 20
  nl_rel_tol = 1.0e-9
  num_steps = 1

  [Adaptivity]
    initial_adaptivity = 2
    refine_fraction = 0.8
    coarsen_fraction = 0.1
    max_h_level = 3
  []
[]

[Postprocessors]
  [./left_T]
    type = SideAverageValue
    variable = T
    boundary = left
  [../]
  [./qx_ave]
    type = ElementAverageValue
    variable = q_x
  [../]
  [./qy_ave]
    type = ElementAverageValue
    variable = q_y
  [../]
  # [./qz_ave]
  #   type = ElementAverageValue
  #   variable = q_z
  # [../]

  [./ave_therm_cond]
    type = ElementAverageValue
    variable = thC
  [../]

  # [./feature_counter]
  #   type = FeatureFloodCount
  #   variable = bnds
  #   compute_var_to_feature_map = true
  #   execute_on = 'initial timestep_end'
  # [../]
  # # [./Volume]
  # #   type = VolumePostprocessor
  # #   execute_on = 'initial'
  # # [../]
  # # [./volume_fraction]
  # #   type = FeatureVolumeFraction
  # #   mesh_volume = Volume
  # #   feature_volumes = feature_volumes
  # #   execute_on = 'initial timestep_end'
  # # [../]
  #
  # [./GBlength]
  #   type = GrainBoundaryArea
  #   grains_per_side = 2
  # [../]
  # [./avg_grain_area]
  #   type = AverageGrainVolume
  #   feature_counter = grain_tracker
  #   execute_on = 'initial timestep_end'
  # # [../]
  # [./bndsarea]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = bnds
  #   execute_on = 'initial timestep_end'
  # [../]
  #
  # [./gr0area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr0
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr1area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr1
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr2area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr2
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr3area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr3
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr4area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr4
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr5area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr5
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr6area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr6
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr7area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr7
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr8area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr8
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr9area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr9
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr10area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr10
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr11area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr11
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr12area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr12
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr13area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr13
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr14area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr14
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr15area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr15
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr16area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr16
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr17area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr17
  #   execute_on = 'initial timestep_end'
  # [../]
  #
  # [./gr18area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr18
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr19area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr19
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr20area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr20
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr21area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr21
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr22area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr22
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr23area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr23
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr24area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr24
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr25area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr25
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr26area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr26
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr27area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr27
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr28area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr28
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr29area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr29
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr30area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr30
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr31area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr31
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr32area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr32
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr33area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr33
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr34area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr34
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr35area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr35
  #   execute_on = 'initial timestep_end'
  # [../]
  #
  # [./gr36area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr36
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr37area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr37
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr38area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr38
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr39area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr39
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr40area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr40
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr41area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr41
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr42area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr42
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr43area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr43
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr44area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr44
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr45area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr45
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr46area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr46
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr47area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr47
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr48area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr48
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr49area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr49
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr50area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr50
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr51area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr51
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr52area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr52
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr53area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr53
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr54area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr54
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr55area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr55
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr56area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr56
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr57area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr57
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr58area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr58
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr59area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr59
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr60area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr60
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr61area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr61
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr62area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr62
  #   execute_on = 'initial timestep_end'
  # [../]
  # [./gr63area]
  #   type = ElementIntegralVariablePostprocessor
  #   variable = gr63
  #   execute_on = 'initial timestep_end'
  # [../]

[]

[Preconditioning]
  [./SMP]
    type = SMP
    full = true
  [../]
[]

[Outputs]
  execute_on = 'INITIAL TIMESTEP_END'
  exodus = true
  # csv = true
  file_base = out_ecC_polycrystal_diffusion_voronoi_64gr_2D_int1.15nm_20nm_800K_Si
[]
