class Matriz_Ordem_Hexapoda {
  String matrizij;
  String matrizik;
  String imgij;
  String imgik;
  int indiceij;
  int indiceik;

  int i = 0;
  int j = 0;
  int k = 1;

  var matrizindice = ["[0][0]"];
  var matriztexto = ["Asas ausentes ou reduzidas, não funcionais."];
  var matrizimg = ["assets/imgchave/1.png"];

  void define() {
    matrizindice.add("[1][0]");
    matrizindice.add("[2][0]");
    matrizindice.add("[1][1]");
    matrizindice.add("[2][2]");
    matrizindice.add("[3][4]");
    matrizindice.add("[4][8]");
    matrizindice.add("[3][5]");
    matrizindice.add("[4][10]");
    matrizindice.add("[5][20]");
    matrizindice.add("[4][11]");
    matrizindice.add("[5][22]");
    matrizindice.add("[2][3]");
    matrizindice.add("[3][6]");
    matrizindice.add("[4][12]");
    matrizindice.add("[5][24]");
    matrizindice.add("[4][13]");
    matrizindice.add("[5][26]");
    matrizindice.add("[3][7]");
    matrizindice.add("[4][14]");
    matrizindice.add("[5][28]");
    matrizindice.add("[4][15]");
    matrizindice.add("[5][30]");
    matrizindice.add("[6][60]");
    matrizindice.add("[7][120]");
    matrizindice.add("[8][240]");
    matrizindice.add("[7][121]");
    matrizindice.add("[8][242]");
    matrizindice.add("[6][61]");
    matrizindice.add("[7][122]");
    matrizindice.add("[8][244]");
    matrizindice.add("[7][123]");
    matrizindice.add("[8][246]");
    matrizindice.add("[9][492]");
    matrizindice.add("[10][984]");
    matrizindice.add("[9][493]");
    matrizindice.add("[10][986]");
    matrizindice.add("[8][247]");
    matrizindice.add("[9][494]");
    matrizindice.add("[10][988]");
    matrizindice.add("[9][495]");
    matrizindice.add("[10][990]");
    matrizindice.add("[5][31]");
    matrizindice.add("[6][62]");
    matrizindice.add("[7][124]");
    matrizindice.add("[8][248]");
    matrizindice.add("[7][125]");
    matrizindice.add("[8][250]");
    matrizindice.add("[6][63]");
    matrizindice.add("[7][126]");
    matrizindice.add("[8][252]");
    matrizindice.add("[7][127]");
    matrizindice.add("[8][256]");
    matrizindice.add("[9][512]");
    matrizindice.add("[8][257]");
    matrizindice.add("[9][514]");
    matrizindice.add("[0][1]");
    matrizindice.add("[1][2]");
    matrizindice.add("[2][4]");
    matrizindice.add("[3][8]");
    matrizindice.add("[4][16]");
    matrizindice.add("[3][9]");
    matrizindice.add("[4][18]");
    matrizindice.add("[5][36]");
    matrizindice.add("[6][72]");
    matrizindice.add("[5][37]");
    matrizindice.add("[6][74]");
    matrizindice.add("[4][19]");
    matrizindice.add("[5][38]");
    matrizindice.add("[6][76]");
    matrizindice.add("[5][39]");
    matrizindice.add("[6][78]");
    matrizindice.add("[2][5]");
    matrizindice.add("[3][10]");
    matrizindice.add("[4][20]");
    matrizindice.add("[5][40]");
    matrizindice.add("[4][21]");
    matrizindice.add("[5][42]");
    matrizindice.add("[3][11]");
    matrizindice.add("[4][22]");
    matrizindice.add("[5][44]");
    matrizindice.add("[6][88]");
    matrizindice.add("[7][176]");
    matrizindice.add("[6][89]");
    matrizindice.add("[7][178]");
    matrizindice.add("[5][45]");
    matrizindice.add("[6][90]");
    matrizindice.add("[7][180]");
    matrizindice.add("[6][91]");
    matrizindice.add("[7][182]");
    matrizindice.add("[8][364]");
    matrizindice.add("[9][728]");
    matrizindice.add("[8][365]");
    matrizindice.add("[9][730]");
    matrizindice.add("[7][183]");
    matrizindice.add("[8][366]");
    matrizindice.add("[9][732]");
    matrizindice.add("[8][367]");
    matrizindice.add("[9][734]");
    matrizindice.add("[4][23]");
    matrizindice.add("[5][46]");
    matrizindice.add("[6][92]");
    matrizindice.add("[7][184]");
    matrizindice.add("[6][93]");
    matrizindice.add("[7][186]");
    matrizindice.add("[5][47]");
    matrizindice.add("[6][94]");
    matrizindice.add("[7][188]");
    matrizindice.add("[6][95]");
    matrizindice.add("[7][190]");
    matrizindice.add("[8][380]");
    matrizindice.add("[7][191]");
    matrizindice.add("[8][382]");
    matrizindice.add("[9][764]");
    matrizindice.add("[8][383]");
    matrizindice.add("[9][766]");
    matrizindice.add("[1][3]");
    matrizindice.add("[2][6]");
    matrizindice.add("[3][12]");
    matrizindice.add("[4][24]");
    matrizindice.add("[3][13]");
    matrizindice.add("[4][26]");
    matrizindice.add("[2][7]");
    matrizindice.add("[3][14]");
    matrizindice.add("[4][28]");
    matrizindice.add("[3][15]");
    matrizindice.add("[4][30]");
    matrizindice.add("[5][60]");
    matrizindice.add("[6][120]");
    matrizindice.add("[5][61]");
    matrizindice.add("[6][122]");
    matrizindice.add("[4][31]");
    matrizindice.add("[5][62]");
    matrizindice.add("[6][124]");
    matrizindice.add("[5][63]");
    matrizindice.add("[6][126]");

    //Inicio dos textos da matriz
//1
    matriztexto.add("Inseto séssil ou com pouca mobilidade encontrado em plantas, com corpo achatado ou arredondado, podendo ter ou não uma carapaça ou cobertura de cera. Tem aparelho bucal para sugar e as pernas podem estar presentes, ausentes ou reduzidas. Se tiver pernas, elas possuem segmentos simples e garras simples (fêmeas de cochonilhas).");
    matriztexto.add("Hemiptera");
    matriztexto.add("Inseto móvel, sem carapaça ou cobertura de cera, com aparelho bucal variado e pernas presentes e funcionais.");
    matriztexto.add("Aparelho bucal escondido dentro de uma cavidade na cabeça. Olhos rudimentares (olhos muito pequenos e pouco desenvolvidos) ou ausentes. Pernas com apenas um segmento na parte final (tarsos).");
    matriztexto.add("Antenas ausentes; perna anterior alongada e com muitas cerdas longas; abdômen com 12 segmentos; comprimento do corpo 0,5-2 mm.");
    matriztexto.add("Protura");
    matriztexto.add("Antenas presentes; perna anterior não modificada; abdômen com 10 segmentos ou menos.");
    matriztexto.add("Cercos presentes (apêndices na extremidade do abdômen), que são longos e segmentados ou em forma de pinça. Corpo estreito e alongado, com abdômen de 10 segmentos. Não possui colóforo (estrutura que ajuda na absorção de água), fúrcula (estrutura usada para saltar) e retináculo (estrutura que segura a fúrcula no lugar). Comprimento do corpo varia de 1 a 58 mm.");
    matriztexto.add("Diplura");
    matriztexto.add("Não possui cercos (apêndices na extremidade do abdômen). Corpo curto, com abdômen de no máximo 6 segmentos. Possui colóforo (estrutura que ajuda na absorção de água), fúrcula (estrutura usada para saltar) e retináculo (estrutura que segura a fúrcula no lugar). Comprimento do corpo varia de 0,25 a 6 mm.");
    matriztexto.add("Collembola");
    matriztexto.add("Aparelho bucal do tipo ectognato (não escondido em uma cavidade na cabeça). Olhos podem estar presentes ou ausentes. Pernas geralmente com mais de 2 segmentos na parte final (tarsos).");
    matriztexto.add("Três filamentos caudais presentes na extremidade do abdômen: dois cercos (apêndices) e um paracerco (apêndice adicional). Abdômen com pequenos apêndices ventrais chamados estilos.");
    matriztexto.add("Olhos compostos grandes, geralmente próximos um do outro. Tórax arqueado. Comprimento do corpo varia de 6 a 20 mm.");
    matriztexto.add("Archaeognatha");
    matriztexto.add("Olhos compostos pequenos ou ausentes. Corpo achatado de cima para baixo (dorso-ventralmente). Comprimento do corpo varia de 2 a 15 mm.");
    matriztexto.add("Zygentoma");
    matriztexto.add("Cercos (apêndices na extremidade do abdômen) podem estar presentes ou ausentes. Paracerco (apêndice adicional na extremidade do abdômen) está ausente. Abdômen sem estilos ventrais (pequenos apêndices na parte inferior).");
    matriztexto.add("Abdômen com uma constrição visível na base, formando uma cintura. Tarsos (segmentos finais das pernas) com cinco segmentos. Aparelho bucal mastigador. Antena dobrada em forma de cotovelo (geniculada) ou fina e alongada (filiforme), como em formigas e vespas sem asas (ápteras).");
    matriztexto.add("Hymenoptera");
    matriztexto.add("Abdômen sem constrição na base; tarsos, aparelho bucal e antenas variáveis");
    matriztexto.add("Os insetos possuem cercos, que são pequenas estruturas sensoriais localizadas na parte de trás do corpo. O aparelho bucal deles é do tipo mastigador, ou seja, adaptado para triturar alimentos. As antenas são longas e podem ter a forma de um fio (filiformes) ou parecidas com um colar de contas (moniliformes), características comuns em insetos do grupo dos ortopteroides.");
    matriztexto.add("Tarsos pentâmeros: última seção da perna, divididos em cinco segmentos distintos. Essas divisões são visíveis e desempenham um papel importante na locomoção e na interação com superfícies, permitindo maior flexibilidade e aderência. Esse tipo de estrutura é típico de diversos grupos de insetos, sendo uma característica que auxilia na sua identificação.");
    matriztexto.add("Corpo achatado no sentido de cima para baixo (dorso-ventralmente), o que os ajuda a se esconder em frestas. O pronoto, uma parte do tórax, cobre grande parte da cabeça quando vista de cima. Suas patas têm tarsos, ou seja, a parte final das pernas, divididos em cinco segmentos (tarsos pentâmeros). O comprimento do corpo varia entre 5 e 90 mm, caracterizando as baratas que não possuem asas (ápteras).");
    matriztexto.add("Blattaria");
    matriztexto.add("Corpo alongado e estreito, em forma de graveto; comprimento 17-340 mm");
    matriztexto.add("Phasmatodea");
    matriztexto.add("Os tarsos, que são a última parte das pernas dos insetos, possuem entre 2 e 4 segmentos.");
    matriztexto.add("A perna posterior desses insetos é adaptada para saltar, com o fêmur visivelmente dilatado, conferindo-lhes força para impulsão. O pronoto, a parte dorsal do primeiro segmento do tórax, é dobrado nas laterais, cobrindo a região pleural (área lateral do corpo). As patas possuem tarsos divididos em 3 a 4 segmentos, o que oferece maior flexibilidade e eficiência nos movimentos. O comprimento total do corpo varia entre 5 e 150 mm, demonstrando grande diversidade de tamanho entre as espécies.");
    matriztexto.add("Orthoptera");
    matriztexto.add("A perna posterior desses insetos não é adaptada para saltar, ou seja, não apresenta especializações para impulsão. O pronoto, a parte dorsal do primeiro segmento do tórax, não apresenta dobras laterais, ficando plano e sem cobrir as laterais do corpo.");
    matriztexto.add("Os tarsos desses insetos são trímeros, ou seja, divididos em três segmentos, o que proporciona uma boa flexibilidade e adaptação a diferentes superfícies. Além disso, eles possuem olhos compostos bem desenvolvidos, formados por várias unidades visuais (omatídeos), o que lhes confere uma visão ampla e sensível aos movimentos, facilitando a detecção de estímulos no ambiente.");
    matriztexto.add("Os cercos desses insetos são grandes, não segmentados, e possuem a forma característica de pinça. Essas estruturas são usadas principalmente para defesa e manipulação de objetos. O comprimento do corpo pode variar entre 3 e 35 mm, demonstrando uma ampla variação de tamanho entre as espécies que possuem essas características.");
    matriztexto.add("Dermaptera");
    matriztexto.add("Os cercos possuem dois segmentos e não apresentam a forma de pinça, sendo mais simples em sua estrutura. O basitarso da perna anterior, que é a primeira parte dos tarsos, é bastante dilatado, conferindo maior superfície de contato. O comprimento do corpo varia entre 4 e 30 mm.");
    matriztexto.add("Embioptera");
    matriztexto.add("Os tarsos desses insetos podem ser dímeros (com dois segmentos) ou tetrâmeros (com quatro segmentos), variando conforme a espécie. Além disso, os olhos compostos estão ausentes ou são vestigiais, ou seja, reduzidos e sem função visual significativa.");
    matriztexto.add("Os tarsos desses insetos são dímeros, ou seja, compostos por dois segmentos. Os cercos, localizados na parte posterior do corpo, possuem apenas um único segmento. As antenas são formadas por nove artículos (segmentos), o que confere sensibilidade ao ambiente. O comprimento total do corpo varia entre 2 e 4 mm, indicando que se trata de insetos de pequeno porte.");
    matriztexto.add("Zoraptera");
    matriztexto.add("Os tarsos dos operários e soldados de cupins são tetrâmeros, ou seja, compostos por quatro segmentos. Os cercos, localizados na extremidade posterior do corpo, são dímeros, com dois segmentos. As antenas variam entre 10 e 21 artículos (segmentos), proporcionando uma alta capacidade sensorial. O comprimento desses cupins varia de 3 a 20 mm, dependendo da casta (operários ou soldados). (Figs 23.22-24)");
    matriztexto.add("Blattaria");
    matriztexto.add("Os cercos estão ausentes nesses insetos, ou seja, eles não possuem essas estruturas sensoriais na parte posterior do corpo. Tanto o aparelho bucal quanto as antenas apresentam variações significativas.");
    matriztexto.add("Os tarsos desses insetos são pentâmeros, ou seja, compostos por cinco segmentos, conferindo-lhes maior flexibilidade nos movimentos. O aparelho bucal é do tipo sugador, adaptado para a ingestão de líquidos, como néctar ou seiva. As antenas são curtas, desempenhando um papel sensorial mais próximo ao ambiente imediato.");
    matriztexto.add("Corpo achatado lateralmente; pernas longas, saltadoras.");
    matriztexto.add("Siphonaptera");
    matriztexto.add("Corpo achatado dorso-ventralmente; pernas curtas");
    matriztexto.add("Diptera");
    matriztexto.add("Os tarsos desses insetos variam entre 1 e 3 segmentos, oferecendo diferentes níveis de mobilidade e adaptação a diversas superfícies. Tanto o aparelho bucal quanto as antenas podem variar amplamente.");
    matriztexto.add("Aparelho bucal sugador formando um rostro alongado e segmentado");
    matriztexto.add("Hemiptera");
    matriztexto.add("O aparelho bucal desses insetos é variável, podendo apresentar diferentes formas e funções, mas nunca se desenvolve em um rostro longo e segmentado. Essa característica ajuda a diferenciá-los de outros grupos de insetos que possuem essa estrutura adaptada para perfuração e sucção.");
    matriztexto.add("Pernas terminando no arólio, que forma uma vesícula eversível; garras reduzidas; aparelho bucal sugador cônico, curto e não segmentado (tripes ápteros)");
    matriztexto.add("Thysanoptera"); 
    matriztexto.add("Pernas terminando em garras bem desenvolvidas; aparelho bucal variável");
    matriztexto.add("Psocodea");
    matriztexto.add("Asas presentes e funcionais");
    matriztexto.add("Com um ou dois pares de asas de textura uniforme, não engrossadas nem endurecidas (mas podem estar cobertas de pelos ou escamas, e apresentar pigmentação)");
    matriztexto.add("Com apenas um par de asas");
    matriztexto.add("Asas posteriores em forma de halteres; tarsos pentâmeros; aparelho bucal sugador (atrofiado em algumas espécies)");
    matriztexto.add("Diptera"); 
    matriztexto.add("Asas posteriores não em forma de halteres; tarsos com 1-5 segmentos; aparelho bucal variável");
    matriztexto.add("Cercos presentes");
    matriztexto.add("Pernas posteriores saltadoras; aparelho bucal mastigador; antena mais longa que a cabeça, cercos curtos; tarsos com 2-3 segmentos"); 
    matriztexto.add("Orthoptera");
    matriztexto.add("Pernas posteriores não saltadoras; aparelho bucal atrofiado; antena muito curta, em forma de cerda; cercos longos; tarsos com 4-5 segmentos"); 
    matriztexto.add("Ephemeroptera");
    matriztexto.add("Cercos ausentes");
    matriztexto.add("Asa anterior em forma de halteres; asa posterior bem desenvolvida; antena flabelada");
    matriztexto.add("Strepsiptera");
    matriztexto.add("Asa anterior bem desenvolvida; asa posterior vestigial; antena filiforme; aparelho bucal atrofiado; tarsos com um segmento (macho de cochonilha)");
    matriztexto.add("Hemiptera");
    matriztexto.add("Com dois pares de asas");
    matriztexto.add("Asas cobertas de escamas ou pelos, pelo menos parcialmente; aparelho bucal em forma de uma probóscide enrolada ou atrofiado; antenas longas");
    matriztexto.add("Asas cobertas de escamas; aparelho bucal em forma de uma probóscide enrolada, raramente atrofiado");
    matriztexto.add("Lepidoptera");
    matriztexto.add("Asas cobertas de pelos; aparelho bucal atrofiado");
    matriztexto.add("Trichoptera");
    matriztexto.add("Asas não cobertas por escamas nem pelos; aparelho bucal mastigador, sugador ou atrofiado, nunca em forma de uma probóscide enrolada; antenas curtas ou longas ");
    matriztexto.add("Tarsos com 1-3 segmentos");
    matriztexto.add("Aparelho bucal sugador em forma de uma probóscide longa e segmentada ou cônica; cercos ausentes");
    matriztexto.add("Aparelho bucal longo e segmentado; garras bem desenvolvidas; asas não franjadas");
    matriztexto.add("Hemiptera");
    matriztexto.add("Aparelho bucal curto e cônico; garras reduzidas; pernas terminando no arólio, que forma uma vesícula eversível (tripes alados)");
    matriztexto.add("Thysanoptera");
    matriztexto.add("Aparelho bucal mandibulado ou atrofiado; cercos ausentes ou presentes");
    matriztexto.add("Antenas curtas, em forma de cerda; olhos grandes e salientes; abdômen longo e fino (Figs 15.1-2)");
    matriztexto.add("Odonata");
    matriztexto.add("Antenas longas, filiformes ou moniliformes; olhos e abdômen variáveis");
    matriztexto.add("Cercos segmentados; antenas longas");
    matriztexto.add("Cercos dímeros; basitarso anterior muito dilatado; antenas moniliformes");
    matriztexto.add("Embioptera");
    matriztexto.add("Cercos longos, com muitos segmentos; basitarso anterior não dilatado; antenas filiformes");
    matriztexto.add("Plecoptera");
    matriztexto.add("Cercos não segmentados ou ausentes");
    matriztexto.add("Cercos ausentes; clípeo inflado; antena filiforme; tarso com 2-3 segmentos");
    matriztexto.add("Psocodea");
    matriztexto.add("Cercos presentes; antena moniliforme; tarsos dímeros (Fig. 16.5)");
    matriztexto.add("Zoraptera");
    matriztexto.add("Tarsos com 4-5 segmentos");
    matriztexto.add("Cercos segmentados");
    matriztexto.add("Antena curta, em forma de cerda; asa posterior muito menor que a anterior; aparelho bucal atrofiado");
    matriztexto.add("Ephemeroptera");
    matriztexto.add("Antena longa, moniliforme ou filiforme; asas de tamanho e forma semelhantes; aparelho bucal mandibulado funcional (cupins alados)");
    matriztexto.add("Blattaria");
    matriztexto.add("Cercos não segmentados ou ausentes");
    matriztexto.add("Asa posterior muito menor que a anterior; asa anterior com menos de 20 células; abdômen geralmente com um estreitamento, formando um “cintura” ");
    matriztexto.add("Hymenoptera");
    matriztexto.add("Asas anterior e posterior aproximadamente do mesmo tamanho e formato; asa anterior com mais de 20 células; abdômen sem estreitamento");
    matriztexto.add("Cabeça alongada, formando um rostro; região costal da asa anterior sem veias transversais; comprimento do corpo 14-24 mm");
    matriztexto.add("Mecoptera");
    matriztexto.add("Cabeça não alongada; região costal da asa anterior geralmente com muitas veias transversais");
    matriztexto.add("Região basal da asa posterior mais larga na base que na asa anterior");
    matriztexto.add("Megaloptera");
    matriztexto.add("Região basal da asa posterior semelhante ou mais estreita que na asa anterior");
    matriztexto.add("Neuroptera");
    matriztexto.add("Asa anterior engrossada ou endurecida, pelo menos na região proximal; asa posterior membranosa, claramente mais fina que a anterior; quando em repouso, asa anterior cobre a asa posterior e pelo menos parte do abdômen");
    matriztexto.add("Asa anterior sem veias; asa posterior geralmente permanece dobrada e oculta sob a anterior quando em repouso; aparelho bucal mastigador");
    matriztexto.add("Cercos grandes, em forma de pinça; asa anterior curta, cobrindo pequena parte do abdômen");
    matriztexto.add("Dermaptera");
    matriztexto.add("Cercos ausentes; asa anterior (élitro) de tamanho variável");
    matriztexto.add("Coleoptera");
    matriztexto.add("Asa anterior com veias; aparelho bucal mastigador ou sugador");
    matriztexto.add("Aparelho bucal sugador em forma de rostro segmentado; cercos ausentes (Heteroptera)");
    matriztexto.add("Hemiptera");
    matriztexto.add("Aparelho bucal mastigador; cercos presentes");
    matriztexto.add("Coxas grandes, de formato aproximadamente triangular, mais longas que um terço do comprimento do fêmur; tarsos pentâmeros; cercos  segmentados");
    matriztexto.add("Corpo largo e achatado; cabeça pelo menos parcialmente coberta pelo pronoto; perna anterior semelhante às outras; protórax curto (baratas)");
    matriztexto.add("Blattaria");
    matriztexto.add("Corpo estreito e não achatado; cabeça não coberta pelo pronoto; perna anterior raptorial, com espinhos grandes; protórax alongado");
    matriztexto.add("Mantodea");
    matriztexto.add("Coxas pequenas, muito mais curtas que o fêmur; tarsos com 2-5 segmentos; cercos segmentados ou simples");
    matriztexto.add("Perna posterior saltadora; com fêmur muito mais largo que a tíbia; cercos com 2-4 segmentos; pronoto grande, cobrindo parte da região lateral do tórax");
    matriztexto.add("Orthoptera");
    matriztexto.add("Perna posterior semelhantes às outras; cercos pentâmeros; pronoto pequeno; corpo alongado, em forma de graveto (bicho-pau) (Figs 21.54-55)");
    matriztexto.add("Phasmatodea");


    matrizimg.add("assets/imgchave/2.png");
    matrizimg.add("assets/imgchave/3.png");
    matrizimg.add("assets/imgchave/4.png");
    matrizimg.add("assets/imgchave/5.png");
    matrizimg.add("assets/imgchave/6.png");
    matrizimg.add("assets/imgchave/7.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/10.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/12.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/14.png");
    matrizimg.add("assets/imgchave/15.png");
    matrizimg.add("assets/imgchave/16.png");
    matrizimg.add("assets/imgchave/17.png");
    matrizimg.add("assets/imgchave/18.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/20.png");
    matrizimg.add("assets/imgchave/21.png");
    matrizimg.add("assets/imgchave/22.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/25.png");
    matrizimg.add("assets/imgchave/26.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/28.png");
    matrizimg.add("assets/imgchave/29.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/31.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/34.png");
    matrizimg.add("assets/imgchave/35.png");
    matrizimg.add("assets/imgchave/36.png");
    matrizimg.add("assets/imgchave/37.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/39.png");
    matrizimg.add("assets/imgchave/40.png");
    matrizimg.add("assets/imgchave/41.png");
    matrizimg.add("assets/imgchave/42.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/45.png");
    matrizimg.add("assets/imgchave/46.png");
    matrizimg.add("assets/imgchave/47.png");
    matrizimg.add("assets/imgchave/48.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/50.png");
    matrizimg.add("assets/imgchave/51.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/53.png");
    matrizimg.add("assets/imgchave/54.png");
    matrizimg.add("assets/imgchave/55.png");
    matrizimg.add("assets/imgchave/56.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/60.png");
    matrizimg.add("assets/imgchave/61.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/64.png");
    matrizimg.add("assets/imgchave/65.png");
    matrizimg.add("assets/imgchave/66.png");
    matrizimg.add("assets/imgchave/67.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/69.png");
    matrizimg.add("assets/imgchave/70.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/72.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/74.png");
    matrizimg.add("assets/imgchave/75.png");
    matrizimg.add("assets/imgchave/76.png");
    matrizimg.add("assets/imgchave/77.png");
    matrizimg.add("assets/imgchave/78.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/82.png");
    matrizimg.add("assets/imgchave/83.png");
    matrizimg.add("assets/imgchave/84.png");
    matrizimg.add("assets/imgchave/85.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/87.png");
    matrizimg.add("assets/imgchave/88.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/91.png");
    matrizimg.add("assets/imgchave/92.png");
    matrizimg.add("assets/imgchave/93.png");
    matrizimg.add("assets/imgchave/94.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/96.png");
    matrizimg.add("assets/imgchave/97.png");
    matrizimg.add("assets/imgchave/98.png");
    matrizimg.add("assets/imgchave/99.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/102.png");
    matrizimg.add("assets/imgchave/103.png");
    matrizimg.add("assets/imgchave/104.png");
    matrizimg.add("assets/imgchave/105.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/108.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/110.png");
    matrizimg.add("assets/imgchave/111.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/113.png");
    matrizimg.add("assets/imgchave/114.png");
    matrizimg.add("assets/imgchave/115.png");
    matrizimg.add("assets/imgchave/116.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/119.png");
    matrizimg.add("assets/imgchave/120.png");
    matrizimg.add("assets/imgchave/121.png");
    matrizimg.add("assets/imgchave/122.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/124.png");
    matrizimg.add("assets/imgchave/125.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/128.png");
    matrizimg.add("assets/imgchave/129.png");
    matrizimg.add("assets/imgchave/130.png");
    matrizimg.add("assets/imgchave/131.png");
    matrizimg.add("assets/imgchave/null.png");
    matrizimg.add("assets/imgchave/133.png");
    matrizimg.add("assets/imgchave/134.png");
    matrizimg.add("assets/imgchave/135.png");
    matrizimg.add("assets/imgchave/136.png");




    indiceij = matrizindice.indexOf("[$i][$j]");

    indiceik = matrizindice.indexOf("[$i][$k]");
    if (indiceij >= 0) {
      matrizij = matriztexto.elementAt(indiceij);
      imgij = matrizimg.elementAt(indiceij);
    } else {
      matrizij = null;
      imgij = "null";
    }

    if (indiceik >= 0) {
      matrizik = matriztexto.elementAt(indiceik);
      imgik = matrizimg.elementAt(indiceik);
    } else {
      matrizik = null;
      imgik = "null";
    }
  }
}
