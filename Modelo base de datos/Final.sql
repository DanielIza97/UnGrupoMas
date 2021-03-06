PGDMP                         x            ProyectoRantiRanti    12.4    12.4 Z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32960    ProyectoRantiRanti    DATABASE     �   CREATE DATABASE "ProyectoRantiRanti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
 $   DROP DATABASE "ProyectoRantiRanti";
                postgres    false            �           0    0    SCHEMA public    ACL     Y   REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO yswxtfesjfxnbs;
                   postgres    false    3            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO yswxtfesjfxnbs;
                   postgres    false    688            �            1259    32961    categoria_productos    TABLE     �   CREATE TABLE public.categoria_productos (
    idtipoprod character(10) NOT NULL,
    nombretipoprod character(15) NOT NULL,
    fototipoprod character(200)
);
 '   DROP TABLE public.categoria_productos;
       public         heap    yswxtfesjfxnbs    false            �            1259    32964    categoria_recetas    TABLE     �   CREATE TABLE public.categoria_recetas (
    idtiporeceta character(10) NOT NULL,
    nombretiporeceta character(15) NOT NULL,
    fototiporece character(200)
);
 %   DROP TABLE public.categoria_recetas;
       public         heap    yswxtfesjfxnbs    false            �            1259    32967 
   direccions    TABLE     y  CREATE TABLE public.direccions (
    idcedulacliente character(10),
    calleprincipal character(30),
    callesecundaria character(30),
    imagendireccion character(254),
    numerodecasa character(15),
    sector character(50),
    ciudad character(50),
    provincia character(50),
    telefonocliente character(10),
    iddireccion integer NOT NULL,
    estado boolean
);
    DROP TABLE public.direccions;
       public         heap    yswxtfesjfxnbs    false            �            1259    32973    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    yswxtfesjfxnbs    false            �            1259    32980    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          yswxtfesjfxnbs    false    205            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          yswxtfesjfxnbs    false    206            �            1259    32982    informacion_clientes    TABLE     �   CREATE TABLE public.informacion_clientes (
    idcedulacliente character(10) NOT NULL,
    user_id bigint,
    nombrecliente character(30) NOT NULL,
    generocliente character(6)
);
 (   DROP TABLE public.informacion_clientes;
       public         heap    yswxtfesjfxnbs    false            �            1259    32985    medidas    TABLE     n   CREATE TABLE public.medidas (
    idmedida character(10) NOT NULL,
    nombremedida character(20) NOT NULL
);
    DROP TABLE public.medidas;
       public         heap    yswxtfesjfxnbs    false            �            1259    32988 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    yswxtfesjfxnbs    false            �            1259    32991    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          yswxtfesjfxnbs    false    209            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          yswxtfesjfxnbs    false    210            �            1259    32993    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    yswxtfesjfxnbs    false            �            1259    32999    pedidos    TABLE       CREATE TABLE public.pedidos (
    idpedido character(40) NOT NULL,
    idcedulacliente character(10),
    fechapedido date,
    subtotal double precision,
    iva double precision,
    totalpag double precision,
    iddireccion integer,
    estado character(9)
);
    DROP TABLE public.pedidos;
       public         heap    yswxtfesjfxnbs    false            �            1259    33002 	   productos    TABLE     �  CREATE TABLE public.productos (
    idproducto character(10) NOT NULL,
    idtipoprod character(10),
    nombreproducto character(40),
    detalle character(200),
    tamanoproducto character(15),
    cantidadproducto integer,
    precioproducto double precision,
    imagenproducto character(255),
    idmedida character(2),
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.productos;
       public         heap    yswxtfesjfxnbs    false            �            1259    33008    productoxpedidos    TABLE     �   CREATE TABLE public.productoxpedidos (
    idpedido character(40) NOT NULL,
    idproducto character(10) NOT NULL,
    cantidad double precision NOT NULL
);
 $   DROP TABLE public.productoxpedidos;
       public         heap    yswxtfesjfxnbs    false            �            1259    33011    recetas    TABLE     �   CREATE TABLE public.recetas (
    idreceta character(10) NOT NULL,
    id bigint,
    idtiporeceta character(10) NOT NULL,
    nombrereceta character(50) NOT NULL,
    descripcionreceta character(5000) NOT NULL,
    imagenreceta character(254)
);
    DROP TABLE public.recetas;
       public         heap    yswxtfesjfxnbs    false            �            1259    33017    recetaxproductos    TABLE     �   CREATE TABLE public.recetaxproductos (
    idproducto character(10) NOT NULL,
    idreceta character(10) NOT NULL,
    cantidad character(50)
);
 $   DROP TABLE public.recetaxproductos;
       public         heap    yswxtfesjfxnbs    false            �            1259    33020    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    idcedulacliente character varying(255),
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    rol character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    fotouser character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    yswxtfesjfxnbs    false            �            1259    33026    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          yswxtfesjfxnbs    false    217            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          yswxtfesjfxnbs    false    218            �
           2604    33028    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          yswxtfesjfxnbs    false    206    205            �
           2604    33029    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          yswxtfesjfxnbs    false    210    209            �
           2604    33030    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          yswxtfesjfxnbs    false    218    217            x          0    32961    categoria_productos 
   TABLE DATA           W   COPY public.categoria_productos (idtipoprod, nombretipoprod, fototipoprod) FROM stdin;
    public          yswxtfesjfxnbs    false    202   ?n       y          0    32964    categoria_recetas 
   TABLE DATA           Y   COPY public.categoria_recetas (idtiporeceta, nombretiporeceta, fototiporece) FROM stdin;
    public          yswxtfesjfxnbs    false    203    o       z          0    32967 
   direccions 
   TABLE DATA           �   COPY public.direccions (idcedulacliente, calleprincipal, callesecundaria, imagendireccion, numerodecasa, sector, ciudad, provincia, telefonocliente, iddireccion, estado) FROM stdin;
    public          yswxtfesjfxnbs    false    204   �o       {          0    32973    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          yswxtfesjfxnbs    false    205   �p       }          0    32982    informacion_clientes 
   TABLE DATA           f   COPY public.informacion_clientes (idcedulacliente, user_id, nombrecliente, generocliente) FROM stdin;
    public          yswxtfesjfxnbs    false    207   �p       ~          0    32985    medidas 
   TABLE DATA           9   COPY public.medidas (idmedida, nombremedida) FROM stdin;
    public          yswxtfesjfxnbs    false    208   �q                 0    32988 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          yswxtfesjfxnbs    false    209   8r       �          0    32993    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          yswxtfesjfxnbs    false    211   �r       �          0    32999    pedidos 
   TABLE DATA           w   COPY public.pedidos (idpedido, idcedulacliente, fechapedido, subtotal, iva, totalpag, iddireccion, estado) FROM stdin;
    public          yswxtfesjfxnbs    false    212   �r       �          0    33002 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, idtipoprod, nombreproducto, detalle, tamanoproducto, cantidadproducto, precioproducto, imagenproducto, idmedida, created_at, updated_at) FROM stdin;
    public          yswxtfesjfxnbs    false    213   ks       �          0    33008    productoxpedidos 
   TABLE DATA           J   COPY public.productoxpedidos (idpedido, idproducto, cantidad) FROM stdin;
    public          yswxtfesjfxnbs    false    214   �y       �          0    33011    recetas 
   TABLE DATA           l   COPY public.recetas (idreceta, id, idtiporeceta, nombrereceta, descripcionreceta, imagenreceta) FROM stdin;
    public          yswxtfesjfxnbs    false    215   ?z       �          0    33017    recetaxproductos 
   TABLE DATA           J   COPY public.recetaxproductos (idproducto, idreceta, cantidad) FROM stdin;
    public          yswxtfesjfxnbs    false    216   Ձ       �          0    33020    users 
   TABLE DATA           �   COPY public.users (id, idcedulacliente, name, email, rol, email_verified_at, password, fotouser, remember_token, created_at, updated_at) FROM stdin;
    public          yswxtfesjfxnbs    false    217   ��       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          yswxtfesjfxnbs    false    206            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);
          public          yswxtfesjfxnbs    false    210            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          yswxtfesjfxnbs    false    218            �
           2606    33032    direccions direccions_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT direccions_pkey PRIMARY KEY (iddireccion);
 D   ALTER TABLE ONLY public.direccions DROP CONSTRAINT direccions_pkey;
       public            yswxtfesjfxnbs    false    204            �
           2606    33034    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            yswxtfesjfxnbs    false    205            �
           2606    33036    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            yswxtfesjfxnbs    false    209            �
           2606    33038 )   categoria_productos pk_categoria_producto 
   CONSTRAINT     o   ALTER TABLE ONLY public.categoria_productos
    ADD CONSTRAINT pk_categoria_producto PRIMARY KEY (idtipoprod);
 S   ALTER TABLE ONLY public.categoria_productos DROP CONSTRAINT pk_categoria_producto;
       public            yswxtfesjfxnbs    false    202            �
           2606    33040 +   informacion_clientes pk_informacion_cliente 
   CONSTRAINT     v   ALTER TABLE ONLY public.informacion_clientes
    ADD CONSTRAINT pk_informacion_cliente PRIMARY KEY (idcedulacliente);
 U   ALTER TABLE ONLY public.informacion_clientes DROP CONSTRAINT pk_informacion_cliente;
       public            yswxtfesjfxnbs    false    207            �
           2606    33042    medidas pk_medida 
   CONSTRAINT     U   ALTER TABLE ONLY public.medidas
    ADD CONSTRAINT pk_medida PRIMARY KEY (idmedida);
 ;   ALTER TABLE ONLY public.medidas DROP CONSTRAINT pk_medida;
       public            yswxtfesjfxnbs    false    208            �
           2606    33044    pedidos pk_pedido 
   CONSTRAINT     U   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_pedido PRIMARY KEY (idpedido);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_pedido;
       public            yswxtfesjfxnbs    false    212            �
           2606    33046    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            yswxtfesjfxnbs    false    213            �
           2606    33048 #   productoxpedidos pk_productoxpedido 
   CONSTRAINT     s   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT pk_productoxpedido PRIMARY KEY (idpedido, idproducto);
 M   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT pk_productoxpedido;
       public            yswxtfesjfxnbs    false    214    214            �
           2606    33050    recetas pk_recetas 
   CONSTRAINT     V   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT pk_recetas PRIMARY KEY (idreceta);
 <   ALTER TABLE ONLY public.recetas DROP CONSTRAINT pk_recetas;
       public            yswxtfesjfxnbs    false    215            �
           2606    33052     categoria_recetas pk_tipo_receta 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria_recetas
    ADD CONSTRAINT pk_tipo_receta PRIMARY KEY (idtiporeceta);
 J   ALTER TABLE ONLY public.categoria_recetas DROP CONSTRAINT pk_tipo_receta;
       public            yswxtfesjfxnbs    false    203            �
           2606    33054    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            yswxtfesjfxnbs    false    217            �
           2606    33056    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            yswxtfesjfxnbs    false    217            �
           1259    33057    administra2_fk    INDEX     @   CREATE INDEX administra2_fk ON public.recetas USING btree (id);
 "   DROP INDEX public.administra2_fk;
       public            yswxtfesjfxnbs    false    215            �
           1259    33058    categoria_producto_pk    INDEX     b   CREATE UNIQUE INDEX categoria_producto_pk ON public.categoria_productos USING btree (idtipoprod);
 )   DROP INDEX public.categoria_producto_pk;
       public            yswxtfesjfxnbs    false    202            �
           1259    33059    clasificar_fk    INDEX     G   CREATE INDEX clasificar_fk ON public.productos USING btree (idmedida);
 !   DROP INDEX public.clasificar_fk;
       public            yswxtfesjfxnbs    false    213            �
           1259    33060 
   entrega_fk    INDEX     E   CREATE INDEX entrega_fk ON public.pedidos USING btree (iddireccion);
    DROP INDEX public.entrega_fk;
       public            yswxtfesjfxnbs    false    212            �
           1259    33061    informacion_cliente_pk    INDEX     i   CREATE UNIQUE INDEX informacion_cliente_pk ON public.informacion_clientes USING btree (idcedulacliente);
 *   DROP INDEX public.informacion_cliente_pk;
       public            yswxtfesjfxnbs    false    207            �
           1259    33062 	   medida_pk    INDEX     H   CREATE UNIQUE INDEX medida_pk ON public.medidas USING btree (idmedida);
    DROP INDEX public.medida_pk;
       public            yswxtfesjfxnbs    false    208            �
           1259    33063    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            yswxtfesjfxnbs    false    211            �
           1259    33064 	   pedido_pk    INDEX     H   CREATE UNIQUE INDEX pedido_pk ON public.pedidos USING btree (idpedido);
    DROP INDEX public.pedido_pk;
       public            yswxtfesjfxnbs    false    212            �
           1259    33065    pertenece_a_fk    INDEX     J   CREATE INDEX pertenece_a_fk ON public.productos USING btree (idtipoprod);
 "   DROP INDEX public.pertenece_a_fk;
       public            yswxtfesjfxnbs    false    213            �
           1259    33066    pertenece_fk    INDEX     H   CREATE INDEX pertenece_fk ON public.recetas USING btree (idtiporeceta);
     DROP INDEX public.pertenece_fk;
       public            yswxtfesjfxnbs    false    215            �
           1259    33067 	   posee2_fk    INDEX     M   CREATE INDEX posee2_fk ON public.informacion_clientes USING btree (user_id);
    DROP INDEX public.posee2_fk;
       public            yswxtfesjfxnbs    false    207            �
           1259    33068    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            yswxtfesjfxnbs    false    213            �
           1259    33069    productoxpedido2_fk    INDEX     T   CREATE INDEX productoxpedido2_fk ON public.productoxpedidos USING btree (idpedido);
 '   DROP INDEX public.productoxpedido2_fk;
       public            yswxtfesjfxnbs    false    214            �
           1259    33070    productoxpedido_fk    INDEX     U   CREATE INDEX productoxpedido_fk ON public.productoxpedidos USING btree (idproducto);
 &   DROP INDEX public.productoxpedido_fk;
       public            yswxtfesjfxnbs    false    214            �
           1259    33071    productoxpedido_pk    INDEX     f   CREATE UNIQUE INDEX productoxpedido_pk ON public.productoxpedidos USING btree (idpedido, idproducto);
 &   DROP INDEX public.productoxpedido_pk;
       public            yswxtfesjfxnbs    false    214    214            �
           1259    33072 
   realiza_fk    INDEX     I   CREATE INDEX realiza_fk ON public.pedidos USING btree (idcedulacliente);
    DROP INDEX public.realiza_fk;
       public            yswxtfesjfxnbs    false    212            �
           1259    33073 
   recetas_pk    INDEX     I   CREATE UNIQUE INDEX recetas_pk ON public.recetas USING btree (idreceta);
    DROP INDEX public.recetas_pk;
       public            yswxtfesjfxnbs    false    215            �
           1259    33074    recetaxproducto2_fk    INDEX     V   CREATE INDEX recetaxproducto2_fk ON public.recetaxproductos USING btree (idproducto);
 '   DROP INDEX public.recetaxproducto2_fk;
       public            yswxtfesjfxnbs    false    216            �
           1259    33075    recetaxproducto_fk    INDEX     S   CREATE INDEX recetaxproducto_fk ON public.recetaxproductos USING btree (idreceta);
 &   DROP INDEX public.recetaxproducto_fk;
       public            yswxtfesjfxnbs    false    216            �
           1259    33076    recetaxproducto_pk    INDEX     f   CREATE UNIQUE INDEX recetaxproducto_pk ON public.recetaxproductos USING btree (idproducto, idreceta);
 &   DROP INDEX public.recetaxproducto_pk;
       public            yswxtfesjfxnbs    false    216    216            �
           1259    33077    tiene_fk    INDEX     J   CREATE INDEX tiene_fk ON public.direccions USING btree (idcedulacliente);
    DROP INDEX public.tiene_fk;
       public            yswxtfesjfxnbs    false    204            �
           1259    33078    tipo_receta_pk    INDEX     [   CREATE UNIQUE INDEX tipo_receta_pk ON public.categoria_recetas USING btree (idtiporeceta);
 "   DROP INDEX public.tipo_receta_pk;
       public            yswxtfesjfxnbs    false    203            �
           2606    33079 %   direccions fk_direccio_tiene_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT fk_direccio_tiene_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.direccions DROP CONSTRAINT fk_direccio_tiene_informac;
       public          yswxtfesjfxnbs    false    204    207    2766            �
           2606    33084    pedidos fk_pedido_entrega_direc    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_entrega_direc FOREIGN KEY (iddireccion) REFERENCES public.direccions(iddireccion) ON UPDATE RESTRICT ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_entrega_direc;
       public          yswxtfesjfxnbs    false    2760    204    212            �
           2606    33089 "   pedidos fk_pedido_realiza_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_realiza_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_realiza_informac;
       public          yswxtfesjfxnbs    false    212    207    2766            �
           2606    33094 &   productos fk_producto_clasifica_medida    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_clasifica_medida FOREIGN KEY (idmedida) REFERENCES public.medidas(idmedida) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_clasifica_medida;
       public          yswxtfesjfxnbs    false    2770    213    208            �
           2606    33099 (   productos fk_producto_pertenece_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_pertenece_categori FOREIGN KEY (idtipoprod) REFERENCES public.categoria_productos(idtipoprod) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_pertenece_categori;
       public          yswxtfesjfxnbs    false    213    2755    202            �
           2606    33104 -   productoxpedidos fk_producto_productox_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_pedido FOREIGN KEY (idpedido) REFERENCES public.pedidos(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_pedido;
       public          yswxtfesjfxnbs    false    214    2777    212            �
           2606    33109 %   recetas fk_recetas_pertenece_tipo_rec    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_pertenece_tipo_rec FOREIGN KEY (idtiporeceta) REFERENCES public.categoria_recetas(idtiporeceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.recetas DROP CONSTRAINT fk_recetas_pertenece_tipo_rec;
       public          yswxtfesjfxnbs    false    203    215    2757            �
           2606    33114 .   recetaxproductos fk_recetaxp_recetaxpr_recetas    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_recetas FOREIGN KEY (idreceta) REFERENCES public.recetas(idreceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_recetas;
       public          yswxtfesjfxnbs    false    215    2792    216            �
           2606    33119    users fk_users_posee_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_posee_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_posee_informac;
       public          yswxtfesjfxnbs    false    217    207    2766            x   �   x���=�@�z�sI���cc$V6�b2��w�e�
3�{���K��%[,�$�+[��Ş4��IG��G��ul�PA"m�ڑ���rv%U�箜8w>�����JO��Mʕ���R�.��{�Yž���G8pQWqF�b�G�h��Gz���1v�D4������.      y   �   x�sr�5T N�������3*��U��0��3З�`&�Kjqbei^~1D�3������t��-M-�ʇJq&B�C܋?���A��)��Y�uB�hfr�%�!2d1�?�=����� ���      z   �   x��Խj�0���~I�%{lCȘ�c�r(j#��D�y��CC6ťZ|h9��Z~pT2�e�J눽n�b>TpgO|���R��Z�݌v�8����/�hJ
!���٫�D�'|�M?a�#��Z���#�i�kg@��������yUK��z����wc�����p�O�E]�K��-�	.����7N�'��d�)#P���\0Ǩǂ�ޚt�Ƴ?+d}��?��3v_/^EHSW\R�����Ȳ�^B<5      {      x������ � �      }   3  x����j�0E��W�/(��d/KZH
m!ͦ���XԶ@�[����g Z��}:\��3!u�$�&�f�O����#�]V
���x\�<LLn��ŧ�΃M�F!SA��ܯm�Y�ݘq�A.��7��I��0�.�#��o�5�)m��
�2\I�R5 ���P���1�\ ��LJWun{q��()e�����|X[xm767,Lp-|wun�s�bt�q�����N27[v�D��aDIT�t�}��J���h��4�V0���ȘZ"WD?8>l�� y?�;-q�J��$; ��ִ��&�|J���f�      ~   .   x��5T�N�̤��Ĕ�b��5�ˇ�e�$��"K+p��qqq ��n         _   x�U�;
�@���F�w��A٬x}Y�)��?�����0���L��r���n��4�R��T��3��şi����gf�u��1~�P�z�,      �      x������ � �      �   �   x���M
�0���^ a����=A�ąm)�3A%��-��c$#���xY�>�rj=��G���E���%�!y*�s/�i^�����eEQ�uh+�|�zi��n���a����\P�\C���kC��rx��+��QC�8���1/	�k/      �   K  x��[�n�6�V��0{ԟe]fn����P�2�(�H��24o�G(��^�/�CR�%����n��^�!~�������f��j-x�p�o���زǾeO0���8���w�j���$v���#ǯ�f ����	�	ZR4�bيs	�������<7���o;����}f�חOF9��@YY��h%H�Kg+�p	��	��ףI�T�j�݀�ZQ�E�g<t�&���;[��N�3�Ys�qW�T����( ��r��_��vv�2�n��y+�/����d���j�-�ù��|ȫ~�VC�����>���N�H�7��� I�C��A���:(""�{���"=S.(#������G��mw��͂_��kjy�8~�S�%
��q��`O;q�7e@�yA�AI!��s��g�-���T�*�Rf�Ӟ�Z�-Jٍs��D�>��w�\�nf�jf�ގ���qO�`�o��mA�����OLC�Dr�Y��\K�j��}̆�Z�yoWfA�g�r{&�K�ǲ��d���u5�2!�X�Yn�����<�G�_*�k�@��"��1Y��4��H�sK����r(�_H���$���N�"4J����[��"���I�&c+A�z�{�v���c(��/���7$I!��_��Z�1�j<lB��	��]^R�ӻ����V.�~�]���M.�%��T��u��!�ϓ��D/���5*��:"K��O�G�q�r�@���#q�e�2�+2rB����e�bMY�e>�	���&H~�a󙍿58�V�((��o;��8�pKo����~V��UQ�*NH;��Ǝ�|�����z5��@�\rQD���o#���k�f��@�>�ωӘJM�3���d���s��Z�Q��{���cu�#=�P�; �͛���t�4�
����*HE&g�T�r7ȁ���!��V�D7�{�]�L(g�	t;����9$��$E3�f(���C/y�|-���9�7우r�=��3t������h���W⪘�ْP��)YQ�n��;�q���Q�O���ES��lV|����1�t�iȔ���%��$s</<�{��́<0S>U��?YW;^�e�S�̫"f��ƽ�l	�,�+��P�V�����ݻ�`"���fuT��
�����Z��$gA��3���T,�NxN� -f�5�A�10��i��w�j�����J�Ѫ��j��DĽ�B�9#���B�)��h���S����ԃ�s��8s&Nh(sd2�>�*2�!�^�x3���Q���R�(�|Foќ,A��|����];���#�8&�9����E4H1;����:%�{z�l�ZV��+��S��Q֭5G��3��� �rh�[��B��J�v�\}�~�S�����;t���$�aں��Vh��8㩌�)O�΀�p\)]����w��W3��;�wBV�vg�l��@�k1}�R$������QU��w�.�Q�u��UET��P�ts�v���I�ܮ+S" C�D�8�M��RWH�����o�匲n��.w�KD������#苈7�8�p?Y�&�rT���2�����97㳳���      �   i   x�3472317526�w��-(J�7T�8t� L#.Ct�t�b�g�]��6C,����eJX6���fB�e�� !^W �.c��2�m��� !�}������ ��n�      �   �  x���n����S0����ؒ�9l!������/5ݥ
l�M���%�}�����)�b�*v���$�e7�\�A�L�,�{�T�>��wh��wg;/�O��w��
���hZLr���y����?���w���h�Xu@=9C�sc"&��8��P���h�6�����&�;pNz:q��?��ޛ��?�P��Qb������]���57���m��0�:_o��D�ZF�s0��nM���}���5,�;hB�M��0�_�7�����T���2���M'f��_�F��(��(��(��(�#eg�h�p����� �7X��U��G���{�do���sx��f4���u���Ywx���k\a�i�k�"4`|��:����˩7�7+�Z����-!���H���@�j�(��x�/�U�D�&�P�Lc�w�w��0\��kL3S�2p�7�3$�W -0��CԔ�-���!���b̢.��X#r�,_c�?x�.EڲQ�ΠB+�0��k��?\�+V3��͒�T�(��(��(��(��������y�����9��pԜO˻������/�K�9���![M�q��[�^�#+��~�P<bq�J�b�s����dZH�$ó�����٤'�r@bC�FR0�ԇ�-�Όsx���p��R6���-mgY���L��FэVu�g_[� n�Ϝv*)��R��^YI�\C�	�3b��V<='!T��J��t�H����8����]�ML�(~%�oʰ%��&G�.ÿ���?Qǁf�Ņc[K+�z���1��r=SXJ�-5���I��$+���u	#�"wX#+㊆���-�,�%�d��ϓ���iRS��ט%tG��.-
R��:.Lm�e�2�������(��(��(��(��c���'�7���Q�":��e��kX%6mE��l�Z�����}��XΗ��$���}'9�,�kIQ�bӦ�ɢ	�2��(�,�/��\��b,���Ӆ���os���^ހd�J�eI����琢�S^�qT�kX�7��qmy�b�挥�&��xm��͢ԉ7��8EZ����sJ��*���,=�2}H#�WC�*5-e������(��(��(��(�6c���������/�g�?��x�x�x�S����3W[�!��g�?t�pG�����D>�3-x��U�Y����8ob�hW]�go�c,�T;����W0U�F����
��)��I �P�P��C9EӀ[�Z��C����n���b�t��д��(���k���ZxΎ�X*��zx1��Fi�l�/g�\�9���f!��S�%K��+w/{�����e)��/�g�*�&��(��(��(��(��M38���g���^�..���=z�9 �sК�:TL�W�64�s��n�*�WYD�[B%uٜ3���6�mäQ��O���H]�M'ޣM�-.�Pf]r>[y����U�.��T�u�VlAKje�ݘ�M�Q�tF�<��+�1@�p���ǹ��F:u���b�Ċ6�J�/���]��N�w����9��v�q��������a�c:�<�����e��.nU�ϊu[���Le�W�])f�=M�Pƿؔ�K�~y�u�s,�Z:���z����G+΁-���������tM%���V����Qw���f(���M�T�O�1���q6��S�"����{�����h
-��p�A�FzyF�&��)g����A㬚��b���#�/J���x�nVb�>ٚ�L.u0<[�wm���F�,�6�X���q�1��b�ˊ��f�Hryg�aV�_"|��PR��O��x3�l/��QI��8?�a�rE�;|#�Ox]����7�+Z�O��<E��b�e�6��{v��$��<��}}h5EYQEQEQEQ~�������Ӄ�㽭��?r��n����/��t      �   �   x�s�500T �  ���r�I���0�0r2���\��F��f榦d&�dW���L#܂�"��K�3I�� S,.���Y�XL�Af�*%�k� s�s�K�K�6l��X#p��&0X`����b���� :qh      �     x���K��H���)\d1���W�-�+>���Re��*�(��o�I2c�l���*~��眆
d��� D��8ˢ�9�a�\�=�jQe�����r����8Rv�/ΩP���'T|�����\�y2�9Zw������Ԙz�^�1�����i+��d�y�W �:�Ȁ�C�5�J5�1��zRL]'�At��M���� ����!mb�I�3���( �aD+�Q�%���s}Υ��߲h�E|���t҆��v��1&��]�u�FBV6Lq�����Xrd��Ȉ��ʴ7:�#�������:Z�&BMJ�i5\���!���'�?���=�r���F�q;�o��k��E��bY���N�A7� ��mݱ�Q�(gӱ���I�/��s\L��x���;.$�@���/.D �6s�+���uq�ex���l:�0�P;df\�nr��[l��~��v� �5��L�џ�������:��՜����&��^U����:n�v��➮lD�C�W��(?�]=dMD��>�jZիP�1 S��싰nV}�=��B�`0����1Z�Y��Ӭ�w�u���j��"�#'n�_{���F�蟬r���Op�:@��D�V�\������2�r+�d���/A��u�/��D��V�\3�[�`����0Pu��s�̈V�(A&J�r��:4�7{�Ռj� �Q�`�;�wKx�����B>a\*�r���^��k��ȥy�I�d���pLK0�}���G7�;~b#�Џ�Ӟi5�8����"_9�Oe?��_\����ORɽX���E�:�#�sm���n.-5�����s �%&���[޲b��h+Ż�o�A�����8&>���ɷ���x[��i����m��awj-B�:,`oe6}p|�k���h�Q�5e�3������[Q�2��@��}�Y��V0������ܵ�d�g}�=rԼ���vȎ-��~>��v�y�b�i�u:V��"(����y��_�q�Y1��0_{û#'�#��V7Ԛ�֠?��W�V��r�     