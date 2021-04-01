# SQL - Partie 2 : Création de tables

**Attention : Toutes les commandes que vous taperez devront être conservées dans un fichier .sql**  
**Bien respecter les méthodes demandées à chaque exercice**

## AVANT de commencer, CREER la base de données suivante : webDevelopment

## Exercice 1
Dans la base de données **webDevelopment**, via une requête, créer la table **languages** avec les colonnes :
- **id** (type **INT**, auto-incrémenté, clé primaire)
- **language** (type **NVARCHAR**)

## Exercice 2
Dans la base de données **webDevelopment**, via une requête, créer la table **tools** avec les colonnes suivantes :
- **id** (type **INT**, auto-incrémenté, clé primaire)
- **tool** (type **NVARCHAR**)

## Exercice 3
Dans la base de données **webDevelopment**, via une requête, créer la table **frameworks** avec les colonnes suivantes :
- **id** (type **INT**, auto-incrémenté, clé primaire)
- **name** (type **NVARCHAR**)

## Exercice 4
Dans la base de données **webDevelopment**, via une requête, créer la table **libraries** avec les colonnes suivantes :
- **id** (type **INT**, auto-incrémenté, clé primaire)
- **library** (type **NVARCHAR**)

## Exercice 5
Dans la base de données **webDevelopment**, via l'interface graphique de SQL Server Management Studio, créer la table **ide** avec les colonnes suivantes :
- **id** (type **INT**, auto-incrémenté, clé primaire)
- **ideName** (type **NVARCHAR**)

## Exercice 6
Dans la base de données **webDevelopment**, via l'interface graphique de SQL Server Management Studio, créer la table **browsers** avec les colonnes suivantes :
- **id** (type **INT**, auto-incrémenté, clé primaire)
- **name** (type **NVARCHAR**)

## Exercice 7
Via une requête, supprimer la table **tools**.

## Exercice 8
Via une requête, supprimer la table **libraries**.

## Exercice 9
Via l'interface graphique de SQL Server Management Studio, supprimer la table **ide**.

## TP
Via l'interface graphique de SQL Server Management Studio, CREER la base de données **codex**. Ensuite, y créer une table **clients** qui aura comme colonnes :

| Colonnes          | Type     | Attributs                     |
|-------------------|----------|-------------------------------|
| id                | INT      | Auto-incrémenté, clé primaire |
| lastname          | NVARCHAR | 50 			       |
| firstname         | NVARCHAR | 50 			       |
| birthDate         | DATE     |
| address           | NVARCHAR | 50                            |
| firstPhoneNumber  | INT      |
| secondPhoneNumber | INT      |
| mail              | NVARCHAR | 50                            |
