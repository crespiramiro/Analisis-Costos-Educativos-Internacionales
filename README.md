
# 📘 International Education Cost Analysis

A data analysis project focused on understanding the factors that drive university tuition fees across different countries, based on real-world data from Kaggle.

---

## 🌍 Introduction

This project aims to answer the question:  
**What factors best explain the cost of university tuition worldwide?**

Using a dataset of international university programs, we built a clean, structured dataset and developed two models to understand and predict tuition prices, applying statistical modeling and exploratory data analysis techniques in **R**.

---

## 🎯 Objectives

- Understand how variables like country, region, level of education, cost of living, and HDI affect tuition fees.  
- Build clear visualizations to support insights.  
- Develop interpretable and predictive models for tuition cost.  

---

## 🧾 Dataset

- **Source**: [Kaggle – Cost of International Education](https://www.kaggle.com/datasets/adilshamim8/cost-of-international-education)  
- **Observations**: 804 programs in different universities across the globe  
- **Granularity**: Each row represents a university program, with fields such as country, tuition, rent, cost of living, and more

---

## 🧹 Data Preparation

- Removed records with tuition = 0  
- Created `Tuition_Per_Year` = Tuition_USD / Duration  
- Removed unused `Exchange_rate_USD` column  
- Added `Region` and grouped Europe into West and East  
- Added `Category` for fields of study  
- Merged Human Development Index (HDI) data and categorized into 5 levels

---

## 📊 Exploratory Data Analysis (EDA)

- **Master programs** are the most common, with the most variance in cost  
- **Bachelor's programs** have the highest median tuition  
- **Western Europe** is the most represented region  
- Strong positive correlation between tuition, cost of living, and rent  
- Countries with very high HDI (e.g. Switzerland, Luxembourg) often have lower tuition costs

---

## 📈 Modeling

### 1. Simple Model

```r
Tuition ~ poly(Living_Cost_Index, 2) + Rent + Region + HDI_Level
```

- R²: 0.77  
- Focuses on general effects and is easy to interpret

### 2. Complex Model

```r
Tuition ~ poly(Living_Cost_Index, 2) * Country * Level + Rent
```

- R²: 0.97  
- Captures detailed interactions but is harder to interpret

---

## ✅ Conclusions

Key variables that explain tuition cost:

1. Cost of living
2. Rent
3. Level of education
4. HDI level
5. Country or region

In general, higher living costs correlate with higher tuition—except in very high HDI countries where tuition may be low despite the cost of living.

---

## 🛠 Tools Used

- **R** for data processing, visualization, and modeling  
- **ggplot2** and **tidyverse** for EDA  
- **Quarto (.qmd)** for reporting

---

## 🚀 Future Work

- Include macroeconomic variables like public education investment  
- Deeper regional segmentation (Asia, Latin America)  
- Try non-linear or tree-based models

---

## 🇪🇸 Análisis de Costos Educativos Internacionales

Un proyecto de análisis de datos centrado en entender qué factores explican el costo de matrícula universitaria en distintos países, utilizando datos reales de Kaggle.

---

## Introducción

Este proyecto busca responder la pregunta:  
**¿Qué factores explican mejor el costo de la matrícula universitaria en el mundo?**

A partir de un dataset global, construimos un conjunto de datos limpio y estructurado, e implementamos dos modelos para comprender y predecir los costos, utilizando técnicas de análisis exploratorio y modelado en **R**.

---

## Objetivos

- Entender cómo influyen país, región, nivel educativo, costo de vida e IDH en la matrícula  
- Generar visualizaciones claras para respaldar los hallazgos  
- Desarrollar modelos predictivos e interpretables

---

## Dataset

- **Fuente**: [Kaggle – Cost of International Education](https://www.kaggle.com/datasets/adilshamim8/cost-of-international-education)  
- **Observaciones**: 804 programas ofrecidos por universidades del mundo  
- **Unidad de análisis**: Programa universitario por institución y ciudad

---

## Preparación de Datos

- Se eliminaron registros con matrícula 0  
- Se creó `Tuition_Per_Year` como Tuition_USD / Duración  
- Se eliminó la columna `Exchange_rate_USD`  
- Se creó la variable `Región`, dividiendo Europa en Este y Oeste  
- Se agruparon programas por `Categoría`  
- Se incorporó el IDH y se categorizó en 5 niveles

---

## Análisis Exploratorio

- Los programas de **Maestría** son los más frecuentes y variables en costo  
- Los de **Licenciatura** presentan la mediana más alta  
- **Europa Occidental** es la región con más programas  
- Alta correlación entre matrícula, costo de vida y alquiler  
- Excepciones: países con IDH muy alto ofrecen matrículas bajas

---

## Modelado

### 1. Modelo Simple

```r
Tuition ~ poly(Living_Cost_Index, 2) + Rent + Región + Nivel_IDH
```

- R²: 0.77  
- Fácil de interpretar

### 2. Modelo Complejo

```r
Tuition ~ poly(Living_Cost_Index, 2) * País * Nivel + Rent
```

- R²: 0.97  
- Mayor precisión, menor interpretabilidad

---

## Conclusiones

Los factores clave que explican el costo de matrícula son:

1. Índice de costo de vida  
2. Alquiler  
3. Nivel educativo  
4. Nivel de IDH  
5. País o región

Países con muy alto IDH suelen ofrecer matrículas sorprendentemente bajas.

---

## Herramientas Utilizadas

- **R** para análisis y visualización  
- **ggplot2**, **dplyr** y otras herramientas tidyverse  
- **Quarto (.qmd)** como formato de documentación

---

## Próximos Pasos

- Incluir variables macroeconómicas  
- Segmentar mejor Asia y América  
- Probar modelos más complejos (no lineales, árboles)

