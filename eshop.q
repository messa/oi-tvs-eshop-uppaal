//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*

*/
E<> zakaznik1.Platebni_prikaz_proveden_spatne and obchod1.Objednavka_uzavrena_uspesne

/*
Kontrola, jestli lze uspesne uzavrit objednavku, pokud nebyl proveden platebni prikaz
Ocekava se FALSE
*/
E<> zakaznik1.Platebni_prikaz_neproveden and obchod1.Objednavka_uzavrena_uspesne

/*

*/
A[] not deadlock

/*
A[] not deadlock
*/
E<> deadlock
