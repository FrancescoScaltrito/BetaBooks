
    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    drop table if exists public.audit_log cascade;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.audit_log cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.wishlist cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;
<<<<<<< HEAD
=======

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;
<<<<<<< HEAD
=======
>>>>>>> 3d85ab11cec196c67b5ed61ab75d02fe1ba6537d

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;
>>>>>>> c47ede94ceb3cdb6981e7bca81fbdad8f8b30887

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;
<<<<<<< Updated upstream

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;
=======
>>>>>>> Stashed changes

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;

    set client_min_messages = WARNING;

    alter table if exists public.carrello 
       drop constraint if exists FK776wjw2xhhhnvng0dcvarv4tg;

    alter table if exists public.carrello_items 
       drop constraint if exists FKcehglxos7gy3dmbf7v6khdb5x;

    alter table if exists public.carrello_items 
       drop constraint if exists FKggle9wn1v4tlsly0iayvgu2t2;

    alter table if exists public.formato_libro 
       drop constraint if exists FKru98o2oldimlgvh7yawlq9cxk;

    alter table if exists public.indirizzi 
       drop constraint if exists FK16kc2ieq7mj6cs9659g4uge74;

    alter table if exists public.libri 
       drop constraint if exists FKjkc86wutdx0snjvoahnxl8nc4;

    alter table if exists public.libri 
       drop constraint if exists FK77ov4mk1jfwof0g9h409tvkuf;

    alter table if exists public.libri_categorie 
       drop constraint if exists FK66sjgxah7hsa2l4eccxdil560;

    alter table if exists public.libri_categorie 
       drop constraint if exists FKxrdupktuwtkj0bhopjod1ll1;

    alter table if exists public.ordine_items 
       drop constraint if exists FKtdojp4drvvawdsa8gj2rwysvd;

    alter table if exists public.ordine_items 
       drop constraint if exists FKqhwumpx93d6bj616j99kls26v;

    alter table if exists public.ordini 
       drop constraint if exists FK6pthlbxc7cpm90cv6ghhy7qio;

    alter table if exists public.ordini 
       drop constraint if exists FKqj5n4mdh5tc9qkj7hx54mvgi4;

    alter table if exists public.password_reset_tokens 
       drop constraint if exists FKrenrm5fw0f7u6jmdddpvi8sna;

    alter table if exists public.profili_utente 
       drop constraint if exists FKso5qv8cwuq6fiy0pdu46v0564;

    alter table if exists public.recensioni 
       drop constraint if exists FK5iqrc9rnh4h0iathjn84u8d2b;

    alter table if exists public.recensioni 
       drop constraint if exists FK8spc4gf8nhd618xw4bqhgiche;

    alter table if exists public.wishlist 
       drop constraint if exists FKsf23e19nafi1mrl6ikjws4ucp;

    alter table if exists public.wishlist 
       drop constraint if exists FKin0durqbjnpd9owkhddugn6f1;

    drop table if exists public.audit_log cascade;

    drop table if exists public.autori cascade;

    drop table if exists public.carrello cascade;

    drop table if exists public.carrello_items cascade;

    drop table if exists public.categorie cascade;

    drop table if exists public.editori cascade;

    drop table if exists public.formato_libro cascade;

    drop table if exists public.indirizzi cascade;

    drop table if exists public.libri cascade;

    drop table if exists public.libri_categorie cascade;

    drop table if exists public.ordine_items cascade;

    drop table if exists public.ordini cascade;

    drop table if exists public.password_reset_tokens cascade;

    drop table if exists public.profili_utente cascade;

    drop table if exists public.recensioni cascade;

    drop table if exists public.utenti cascade;

    drop table if exists public.wishlist cascade;
