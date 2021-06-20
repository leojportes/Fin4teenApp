//
//  RegisterTopics.swift
//  Fin4teenApp3
//
//  Created by Leonardo Oliveira Portes on 07/06/21.
//

import Foundation



var eData = [
    
    //MARK: Filmes:
    
    EntertainmentApp(sectionType: "Filmes", name: ["Como ser Warren Buffett",
                                                   "Capitalismo: Uma história de amor",
                                                   "O Lobo de Wall Street",
                                                   "Enron: Os mais espertos da sala",
                                                   "Fome de Poder",
                                                   "A grande Aposta",
                                                   " À caça de Madoff (Chasing Madoff)",
                                                   "O mago das mentiras","Margin Call: O dia antes do fim"],
                     imageGallery: ["becoming_buffet-500x739",
                                    "capitalism",
                                    "olobodewallstreet",
                                    "enron","fome_poder-500x667",
                                    "grande_aposta-500x780",
                                    "madoff",
                                    "mago_mentiras-500x742",
                                    "margin_call-500x721"],
                     
                     description: [" Um olhar sincero sobre a vida de Warren Buffet, um multimilionário que apesar de dirigir a quarta maior companhia do mundo, ainda leva uma vida humilde em uma modesta casa em Omaha.",
                                   "Michael Moore explora o colapso da economia mundial, apresentando uma análise de como o capitalismo corrompeu os ideais de liberdade previstos na Constituição dos Estados Unidos, visando gerar lucros cada vez maiores para um grupo seleto da sociedade.",
                                   "Jordan Belfort é um ambicioso corretor da bolsa de valores que cria um verdadeiro império, enriquecendo de forma rápida, porém ilegal. Ele e seus amigos mergulham em um mundo de excessos, mas seus métodos ilícitos despertam a atenção da polícia.",
                                   "Uma fraude contábil mascarou um esquema que estava por trás da sétima maior empresa dos Estados Unidos. Quando a verdade veio à tona, tudo de pior aconteceu: a companhia fechou e os funcionários e investidores ficaram sem um centavo sequer. O documentário Enron - Os Mais Espertos da Sala revela as artimanhas feitas por contadores e pelos chefes-executivos para fazer parecer um fenômeno de crescimento uma organização que só rendeu frutos para quem esteve envolvido no esquema. ",
                                   "A história da ascensão do McDonald's. Após receber uma demanda sem precedentes e notar uma movimentação de consumidores fora do normal, o vendedor de Illinois Ray Kroc adquire uma participação nos negócios da lanchonete dos irmãos Richard e Maurice Mac McDonald no sul da Califórnia e, pouco a pouco eliminando os dois da rede, transforma a marca em um gigantesco império alimentício.",
                                   "Em 2008, o guru de Wall Street Michael Burry percebe que uma série de empréstimos feitos para o mercado imobiliário está em risco de inadimplência. Ele decide então apostar contra o mercado investindo mais de um bilhão de dólares dos seus investidores. Suas ações atraem a atenção do corretor Jared Vennet que percebe a oportunidade e passa a oferecê-la a seus clientes. Juntos, esses homens fazem uma fortuna tirando proveito do colapso econômico americano.",
                                   " O investigador Harry Markopolos e sua equipe passaram dez anos atrás de Bernard Madoff, trabalhando para solucionar um dos maiores golpes da história do mercado financeiro americano. Durante essa década, Markopolos também foi responsável pela prisão de vários outros fraudadores, todos ligados ao esquema criado por Madoff. A partir de entrevistas e relatos inéditos, o documentário reconta a década de investigação do caso que arruinou a vida de inúmeras pessoas ao redor do mundo.",
                                   "Em 2008, o corretor de ações e consultor financeiro Bernie Madoff é preso por cometer talvez a maior fraude financeira na história dos Estados Unidos.",
                                   "Cortes em Wall Street fazem com que um dos demitidos deixe para trás um pen drive com dados sobre o risco de falência de sua empresa. Então, uma série de decisões financeiras e morais empurram a vida de todos os envolvidos em direção ao abismo."],
                     
                     linkNetflix: StringConstants.listaLinksNetflix,
                     linkAmazon: StringConstants.listaLinksAmazon,
                     LinkApple: StringConstants.listaLinksAppleTv),
    
    //MARK: Livros:
    
    EntertainmentApp(sectionType: "Livros",
                    name: ["Pai Rico, Pai Pobre",
                           "O Segredo da mente Milionária",
                           "Do Mil ao Milhão",
                           "O Homem mais Rico da Babilonia",
                           "O Investidor Inteligente",
                           "Me Poupe, O Livro",
                           "O poder da Educação Financeira",
                           "A Psicologia Financeira",
                           "Como cuidar do seu dinheiro",
                           "Investimentos Inteligentes",
                           "Destrave seu dinheiro",
                           "Quem Convence, enriquece!",
                           "Lucrando com os Tubarões",
                           "Super Sinais",
                           "Negociando ações com Foco a longo prazo",
                           "Analise técnica do mercado financeiro.",
                           "A Bola de Neve.",
                           "Faça fortuna Com Ações.",
                           "A Cabeça do investidor.",
                           "O outro lado da Bolsa."],
                    imageGallery: ["pairicopaipobre",
                                   "ossegredosdamente",
                                   "domilaomilao",
                                   "ohomemmaisricodababilonia",
                                   "oinvestidorinteligente",
                                   "mepoupe","educacaofinanceira",
                                   "apsicologiafinanceira",
                                   "comocuidardoseudinheiro",
                                   "investimentosinteligentes",
                                   "destraveseudinheiro",
                                   "quemconvenceenriquece",
                                   "lucrandocomostubaroes",
                                   "supersinais",
                                   "negociandoacoescomfoco",
                                   "analisetecnicadomercadofin",
                                   "aboladeneve",
                                   "facafortunacomacoes",
                                   "acabecadoinvestidor",
                                   "ooutroladodabolsa"],
                    description: [StringConstants.descriptionPairico,
                                  StringConstants.descriptionOsSegredosMente,
                                  StringConstants.descriptionDoMilaoMilhao,
                                  StringConstants.descriptionOHomemMaisRicoBabil,
                                  StringConstants.descriptionOInvestidorIntelig,
                                  StringConstants.descriptionMePoupe,
                                  StringConstants.descriptionEducacaoFinanceira,
                                  StringConstants.descriptionApsicologiaFin,
                                  StringConstants.descriptionComoCuidarDoSeuDin,
                                  StringConstants.descriptionInvestimentosIntelig,
                                  StringConstants.descriptiondestraveseudinheiro,
                                  StringConstants.descriptionquemconvenceenriquece,
                                  StringConstants.descriptionlucrandocomostubaroes,
                                  StringConstants.descriptionsupersinais,
                                  StringConstants.descriptionnegociandoacoescomfoco,
                                  StringConstants.descriptionanalisetecnicadomercadofin,
                                  StringConstants.descriptionaboladeneve,
                                  StringConstants.descriptionfacafortunacomacoes,
                                  StringConstants.descriptionacabecadoinvestidor,
                                  StringConstants.descriptionooutroladodabolsa],
                    linkNetflix: StringConstants.listaLinksNetflix,
                    linkAmazon: StringConstants.listaLinksAmazon,
                    LinkApple: StringConstants.listaLinksAppleTv),
    
    //MARK: Séries:
    
    EntertainmentApp(sectionType: "Séries/Programas de Tv", name: ["Billions","Black Monday","Industry","Million Dollar","O sócio","Shark Tank Brasil","American Greed"],
                     imageGallery:  ["billions","blackmonday","industry","milliondollartraders","oSocio","sharkTank","americangreed"],
                     description: ["Billions é uma série de televisão estadunidense criada por Brian Koppelman, David Levien e Andrew Ross Sorkin, estrelado por Paul Giamatti e Damian Lewis. Ele foi exibida pelo Showtime desde 17 de janeiro de 2016. A segunda temporada estreou em 19 de fevereiro de 2017.",
                                   "Um grupo de outsiders das finanças se envolve com os figurões da Wall Street, causando a maior quebra da bolsa de sua história, em 1987.",
                                   "Um grupo de ambiciosos jovens recém-formados navega o tenso e competitivo ambiente de um importante banco de investimentos em Londres.",
                                   "Million Dollar Beach House é uma série de televisão de streaming de realidade que foi ao ar na Netflix em 26 de agosto de 2020. O programa segue um grupo de agentes jovens e ambiciosos, parte da Nest Seekers International, vendendo negócios multimilionários em anúncios luxuosos nos Hamptons .",
                                   "Marcus Lemonis, diretor geral de uma empresa multibilionária, sai em busca de negócios de pequeno porte em crise. O empresário investe seu dinheiro e aplica sua experiência para salvar estas empresas e com isso obter mais lucro.",
                                   "Para tirar suas ideais mirabolantes ideias do papel, esses aspirantes a empreendedor precisam negociar com uma equipe de renomados investidores.",
                                   "American Greed é uma série de documentários americanos da CNBC. A série enfoca casos de esquemas Ponzi, peculato e outros crimes de colarinho branco, apresentando entrevistas com investigadores da polícia, vítimas de fraude e, às vezes, fraudadores"],
                     linkNetflix: StringConstants.listaLinksNetflix,
                     linkAmazon: StringConstants.listaLinksAmazon,
                     LinkApple: StringConstants.listaLinksAppleTv)
            ]
