clear; clc; close all;

rng('default')

%% Region: Load variables individually
load('country.mat')
load('covidBrain.mat')
load('covidCulture.mat')
load('covidFamily.mat')
load('covidOther.mat')
load('covidPop1.mat')
load('covidPop2.mat')
load('covidPop3.mat')
load('covidSchool.mat')
load('covidTravel.mat')
load('covidWork.mat')
load('motivBrain.mat')
load('motivCulture.mat')
load('motivFamily.mat')
load('motivOther.mat')
load('motivSchool.mat')
load('motivTravel.mat')
load('motivWork.mat')
load('pcEN.mat')
load('pcES.mat')
load('pcFR.mat')
load('pop1.mat')
load('pop1PC.mat')
load('pop2.mat')
load('pop2PC.mat')
load('pop3.mat')
load('pop3PC.mat')
load('ui1.mat')
load('ui1PC.mat')
load('ui2.mat')
load('ui2PC.mat')

%% Paises agrupados por estudiantes de Ingles, Espanol y Frances

printKMeansClusters(motivSchool, motivWork, 3, '(%) Usuarios uso Estudio', '(%) Usuarios uso Trabajo', '(%) Usuarios uso Estudiante vs. Trabajo', country)
printKMeansClusters(covidSchool, covidWork, 3, '(%) Usuarios uso Estudio (COVID)', '(%) Usuarios uso Trabajo (COVID)', '(%) Usuarios uso Estudio (COVID) vs. Trabajo (COVID)', country)

printKMeansClusters(pcEN, motivSchool, 3, '(%) Estudiantes de Ingles', '(%) Usuarios Estudio', '(%) Estudiantes de Ingles vs. Usuario Estudio', country)
printKMeansClusters(pcEN, covidSchool, 3, '(%) Estudiantes de Ingles', '(%) Usuarios Trabajo', '(%) Estudiantes de Ingles vs. Usuario Trabajo', country)

printKMeansClusters(pcEN, motivWork, 3, '(%) Estudiantes de Ingles', '(%) Usuarios Estudio (COVID)', '(%) Estudiantes de Ingles vs. Usuario Estudio (COVID)', country)
printKMeansClusters(pcEN, covidWork, 3, '(%) Estudiantes de Ingles', '(%) Usuarios Trabajo (COVID)', '(%) Estudiantes de Ingles vs. Usuario Trabajo (COVID)', country)


printDendrogramDim01(pcEN,'Paises','(%) Estudiantes de Ingles','Aprendizaje de Ingles',country)
printDendrogramDim01(pcES,'Paises','(%) Estudiantes de Español','Aprendizaje de Español',country)
printDendrogramDim01(pcFR,'Paises','(%) Estudiantes de Frances','Aprendizaje de Frances',country)

printDendrogramDim01(motivSchool,'Paises','(%) Usuarios Estudio','Usuarios Estudiantes',country)
printDendrogramDim01(motivWork,'Paises','(%) Usuarios Trabajo','Usuarios Trabajadores',country)
printDendrogramDim01(motivTravel,'Paises','(%) Usuarios Viaje','Usuarios Viaje',country)
printDendrogramDim01(motivBrain,'Paises','(%) Usuarios Brain Training','Usuarios Brain Training',country)
printDendrogramDim01(motivFamily,'Paises','(%) Usuarios Family','Usuarios Family',country)
printDendrogramDim01(motivCulture,'Paises','(%) Usuarios Cultura','Usuarios Cultura',country)
printDendrogramDim01(motivOther,'Paises','(%) Usuarios Otro','Usuarios Otro',country)


