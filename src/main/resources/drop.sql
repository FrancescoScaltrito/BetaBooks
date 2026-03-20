
    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists recensioni 
       drop constraint if exists FK3qtralkbontl617niblqxy543;

    alter table if exists wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists autori cascade;

    drop table if exists carrello cascade;

    drop table if exists carrello_items cascade;

    drop table if exists categorie cascade;

    drop table if exists editori cascade;

    drop table if exists formato_libro cascade;

    drop table if exists indirizzi cascade;

    drop table if exists libri cascade;

    drop table if exists libri_categorie cascade;

    drop table if exists ordine_items cascade;

    drop table if exists ordini cascade;

    drop table if exists profili_utente cascade;

    drop table if exists recensioni cascade;

    drop table if exists utenti cascade;

    drop table if exists wishlist cascade;
