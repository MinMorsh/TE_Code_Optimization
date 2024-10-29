[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 30
  ny = 30
  # nz = 30
  xmax = 160e-6 # mm
  ymax = 160e-6 # mm
  # zmax = 100e-9
  elem_type = QUAD4
[]

[GlobalParams]
  op_num = 64
  grain_num = 64
  var_name_base = gr
  int_width = 1.15e-6
  rand_seed = 10
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
    # v = 'gr0 gr1 gr2 gr3 gr4 gr5 gr6 gr7 gr8 gr9'
    v = 'gr0 gr1 gr2 gr3 gr4 gr5 gr6 gr7 gr8 gr9 gr10 gr11 gr12 gr13 gr14 gr15 gr16 gr17 gr18 gr19 gr20 gr21 gr22 gr23 gr24 gr25 gr26 gr27 gr28 gr29 gr30 gr31 gr32 gr33 gr34 gr35 gr36 gr37 gr38 gr39 gr40 gr41 gr42 gr43 gr44 gr45 gr46 gr47
     gr48 gr49 gr50 gr51 gr52 gr53 gr54 gr55 gr56 gr57 gr58 gr59 gr60 gr61 gr62 gr63'
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
[]

[Variables]
  [./PolycrystalVariables]
  [../]

  [./T]
    order = FIRST
    family = LAGRANGE
    # initial_condition = 0.001
    initial_condition = 1e3
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
      #b as in bulk, int as in interface/gb
      type = ParsedMaterial
      block = 0
      constant_names = 'length_scale k_b k_int'
      constant_expressions = 'len_scale ecC_bulk ecC_int' #b-axis value taken from Zhao et al (2017).  Unit: S/m, converted to mm unit system using len_scale
      function = 'sk_b:= length_scale*k_b; sk_int:= length_scale*k_int; if(bnds>0.9,sk_b,sk_int)' ##constant parameters
      outputs = exodus
      f_name = thC
      coupled_variables = 'bnds'
    [../]
[]

[UserObjects]
  [./voronoi_ic]
    type = PolycrystalVoronoi
    coloring_algorithm = jp
    # rand_seed = 10 ## updated in v3, default (0) was assigned previously-MM
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
    # value = 0.001
    value = 1e3
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
  [./left_V]
    type = SideAverageValue
    variable = T
    boundary = left
  [../]

  [./right_V]
    type = SideAverageValue
    variable = T
    boundary = right
  []

  [./qx_ave]
    type = ElementAverageValue
    variable = q_x
  [../]

  [./qy_ave]
    type = ElementAverageValue
    variable = q_y
  [../]

  [./ave_therm_cond]
    type = ElementAverageValue
    variable = thC
  [../]
[]

[Preconditioning]
  [./SMP]
    type = SMP
    full = true
  [../]
[]

[Outputs]
  execute_on = 'TIMESTEP_END'
  exodus = true
  csv = true
  file_base = 2D_SnSe_64gr_ecC_def_TK
[]
