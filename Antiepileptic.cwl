cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antiepileptic-clobazam---primary:
    run: antiepileptic-clobazam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  antiepileptic-frisium---primary:
    run: antiepileptic-frisium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antiepileptic-clobazam---primary/output
  antiepileptic-225mg---primary:
    run: antiepileptic-225mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antiepileptic-frisium---primary/output
  antiepileptic-tapclob---primary:
    run: antiepileptic-tapclob---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antiepileptic-225mg---primary/output
  antiepileptic-suspension---primary:
    run: antiepileptic-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antiepileptic-tapclob---primary/output
  epilepsy-antiepileptic---primary:
    run: epilepsy-antiepileptic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antiepileptic-suspension---primary/output
  antiepileptic-depakote---primary:
    run: antiepileptic-depakote---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: epilepsy-antiepileptic---primary/output
  antiepileptic-acetazolamide---primary:
    run: antiepileptic-acetazolamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antiepileptic-depakote---primary/output
  antiepileptic-oxcarbazepine---primary:
    run: antiepileptic-oxcarbazepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antiepileptic-acetazolamide---primary/output
  antiepileptic-tegretol---primary:
    run: antiepileptic-tegretol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antiepileptic-oxcarbazepine---primary/output
  antiepileptic-liquid---primary:
    run: antiepileptic-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antiepileptic-tegretol---primary/output
  antiepileptic-retard---primary:
    run: antiepileptic-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antiepileptic-liquid---primary/output
  antiepileptic-epimaz---primary:
    run: antiepileptic-epimaz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antiepileptic-retard---primary/output
  antiepileptic-timonil---primary:
    run: antiepileptic-timonil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antiepileptic-epimaz---primary/output
  antiepileptic-teril---primary:
    run: antiepileptic-teril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antiepileptic-timonil---primary/output
  antiepileptic-carbagen---primary:
    run: antiepileptic-carbagen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antiepileptic-teril---primary/output
  antiepileptic-500mcg---primary:
    run: antiepileptic-500mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antiepileptic-carbagen---primary/output
  antiepileptic-rivotril---primary:
    run: antiepileptic-rivotril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antiepileptic-500mcg---primary/output
  antiepileptic-clonazepam---primary:
    run: antiepileptic-clonazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antiepileptic-rivotril---primary/output
  antiepileptic-ethosuximide---primary:
    run: antiepileptic-ethosuximide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antiepileptic-clonazepam---primary/output
  antiepileptic-elixir---primary:
    run: antiepileptic-elixir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antiepileptic-ethosuximide---primary/output
  antiepileptic-emeside---primary:
    run: antiepileptic-emeside---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antiepileptic-elixir---primary/output
  antiepileptic-zarontin---primary:
    run: antiepileptic-zarontin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antiepileptic-emeside---primary/output
  antiepileptic-syrup---primary:
    run: antiepileptic-syrup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antiepileptic-zarontin---primary/output
  antiepileptic-phenobarb---primary:
    run: antiepileptic-phenobarb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antiepileptic-syrup---primary/output
  prominal-antiepileptic---primary:
    run: prominal-antiepileptic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antiepileptic-phenobarb---primary/output
  luminal-antiepileptic---primary:
    run: luminal-antiepileptic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: prominal-antiepileptic---primary/output
  antiepileptic-phenytoin---primary:
    run: antiepileptic-phenytoin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: luminal-antiepileptic---primary/output
  antiepileptic-750mg---primary:
    run: antiepileptic-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antiepileptic-phenytoin---primary/output
  antiepileptic-epanutin---primary:
    run: antiepileptic-epanutin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antiepileptic-750mg---primary/output
  antiepileptic-pentran---primary:
    run: antiepileptic-pentran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antiepileptic-epanutin---primary/output
  antiepileptic-primidone---primary:
    run: antiepileptic-primidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antiepileptic-pentran---primary/output
  antiepileptic-mysoline---primary:
    run: antiepileptic-mysoline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: antiepileptic-primidone---primary/output
  antiepileptic-sodium---primary:
    run: antiepileptic-sodium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antiepileptic-mysoline---primary/output
  antiepileptic-epilim---primary:
    run: antiepileptic-epilim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antiepileptic-sodium---primary/output
  antiepileptic-sodum---primary:
    run: antiepileptic-sodum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: antiepileptic-epilim---primary/output
  antiepileptic-orlept---primary:
    run: antiepileptic-orlept---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: antiepileptic-sodum---primary/output
  antiepileptic-epival---primary:
    run: antiepileptic-epival---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: antiepileptic-orlept---primary/output
  antiepileptic-episenta---primary:
    run: antiepileptic-episenta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: antiepileptic-epival---primary/output
  antiepileptic-zonegran---primary:
    run: antiepileptic-zonegran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: antiepileptic-episenta---primary/output
  antiepileptic-granule---primary:
    run: antiepileptic-granule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: antiepileptic-zonegran---primary/output
  antiepileptic-chrono---primary:
    run: antiepileptic-chrono---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: antiepileptic-granule---primary/output
  antiepileptic-vigabatrin---primary:
    run: antiepileptic-vigabatrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: antiepileptic-chrono---primary/output
  antiepileptic-sabril---primary:
    run: antiepileptic-sabril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: antiepileptic-vigabatrin---primary/output
  antiepileptic-lamotrigine---primary:
    run: antiepileptic-lamotrigine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: antiepileptic-sabril---primary/output
  lamictal-antiepileptic---primary:
    run: lamictal-antiepileptic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: antiepileptic-lamotrigine---primary/output
  valproic-antiepileptic---primary:
    run: valproic-antiepileptic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: lamictal-antiepileptic---primary/output
  antiepileptic-convulex---primary:
    run: antiepileptic-convulex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: valproic-antiepileptic---primary/output
  antiepileptic-gabapentin---primary:
    run: antiepileptic-gabapentin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: antiepileptic-convulex---primary/output
  antiepileptic-neurontin---primary:
    run: antiepileptic-neurontin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: antiepileptic-gabapentin---primary/output
  antiepileptic-600mg---primary:
    run: antiepileptic-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: antiepileptic-neurontin---primary/output
  antiepileptic-800mg---primary:
    run: antiepileptic-800mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: antiepileptic-600mg---primary/output
  antiepileptic-topiramate---primary:
    run: antiepileptic-topiramate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: antiepileptic-800mg---primary/output
  antiepileptic-topamax---primary:
    run: antiepileptic-topamax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: antiepileptic-topiramate---primary/output
  antiepileptic-sprinkle---primary:
    run: antiepileptic-sprinkle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: antiepileptic-topamax---primary/output
  antiepileptic-tiagabine---primary:
    run: antiepileptic-tiagabine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: antiepileptic-sprinkle---primary/output
  antiepileptic-gabitril---primary:
    run: antiepileptic-gabitril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: antiepileptic-tiagabine---primary/output
  trileptal-antiepileptic---primary:
    run: trileptal-antiepileptic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: antiepileptic-gabitril---primary/output
  antiepileptic-levetiracetam---primary:
    run: antiepileptic-levetiracetam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: trileptal-antiepileptic---primary/output
  antiepileptic-keppra---primary:
    run: antiepileptic-keppra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: antiepileptic-levetiracetam---primary/output
  antiepileptic-desitrend---primary:
    run: antiepileptic-desitrend---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: antiepileptic-keppra---primary/output
  antiepileptic-sachet---primary:
    run: antiepileptic-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: antiepileptic-desitrend---primary/output
  antiepileptic-pregabalin---primary:
    run: antiepileptic-pregabalin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: antiepileptic-sachet---primary/output
  antiepileptic-lyrica---primary:
    run: antiepileptic-lyrica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: antiepileptic-pregabalin---primary/output
  antiepileptic-solution---primary:
    run: antiepileptic-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: antiepileptic-lyrica---primary/output
  antiepileptic-150mg---primary:
    run: antiepileptic-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: antiepileptic-solution---primary/output
  antiepileptic-zonisamide---primary:
    run: antiepileptic-zonisamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: antiepileptic-150mg---primary/output
  antiepileptic-rufinamide---primary:
    run: antiepileptic-rufinamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: antiepileptic-zonisamide---primary/output
  antiepileptic-inovelon---primary:
    run: antiepileptic-inovelon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: antiepileptic-rufinamide---primary/output
  antiepileptic-lacosamide---primary:
    run: antiepileptic-lacosamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: antiepileptic-inovelon---primary/output
  antiepileptic-vimpat---primary:
    run: antiepileptic-vimpat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: antiepileptic-lacosamide---primary/output
  antiepileptic-eslicarbazepine---primary:
    run: antiepileptic-eslicarbazepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: antiepileptic-vimpat---primary/output
  antiepileptic-retigabine---primary:
    run: antiepileptic-retigabine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: antiepileptic-eslicarbazepine---primary/output
  antiepileptic-trobalt---primary:
    run: antiepileptic-trobalt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: antiepileptic-retigabine---primary/output
  antiepileptic-perampanel---primary:
    run: antiepileptic-perampanel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: antiepileptic-trobalt---primary/output
  antiepileptic-fycompa---primary:
    run: antiepileptic-fycompa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: antiepileptic-perampanel---primary/output
  antiepileptic-diamox---primary:
    run: antiepileptic-diamox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: antiepileptic-fycompa---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: antiepileptic-diamox---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
