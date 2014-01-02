//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*

*/
A[] obchod1.Objednavka_uzavrena_uspesne imply typ_platby != typ_platby_nezvolen

/*

*/
E<> zakaznik1.Platebni_prikaz_proveden and obchod1.Objednavka_uzavrena_uspesne

/*

*/
E<> zakaznik1.Platebni_prikaz_proveden and (not obchod1.Objednavka_uzavrena_uspesne)

/*

*/
E<> zakaznik1.Platebni_prikaz_proveden_spatne and obchod1.Objednavka_uzavrena_uspesne

/*

*/
A[] not ((zakaznik1.Vybrana_dobirka or zakaznik1.Objednavka_prijata_dobirka) and (obchod1.Platba_prijata or obchod1.Platba_neprijata))

/*

*/
A[] not (zakaznik1.Objednavka_odeslana and (obchod1.Objednavka_uzavrena_uspesne or obchod1.Objednavka_uzavrena_neuspesne))

/*
Kontrola, jestli lze uspesne uzavrit objednavku, pokud nebyl proveden platebni prikaz
Ocekava se FALSE
*/
E<> zakaznik1.Platebni_prikaz_neproveden and obchod1.Objednavka_uzavrena_uspesne

/*

*/
A[] zakaznik1.Zbozi_v_kosiku imply cas_update_kosiku < 1001

/*

*/
A[] zakaznik1.Nastaven_zpusob_platby imply cas_update_kosiku < 1001

/*

*/
A[] zakaznik1.Nastaven_zpusob_doruceni imply cas_update_kosiku < 1001

/*

*/
A[] zakaznik1.Nastavena_dodaci_adresa imply cas_update_kosiku < 1001

/*

*/
A[] not deadlock

/*
A[] not deadlock
*/
E<> deadlock
