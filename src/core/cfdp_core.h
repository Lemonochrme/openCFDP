#ifndef CFDP_CORE_H
#define CFDP_CORE_H

// Déclarations des structures et constantes utilisées dans le module cfdp_core

// Exemple de structure
typedef struct {
    int id;
    char name[50];
} CfdpCoreData;

// Déclaration des fonctions
void initializeCfdpCore();
void processCfdpCoreData(CfdpCoreData *data);
void cleanupCfdpCore();

#endif // CFDP_CORE_H