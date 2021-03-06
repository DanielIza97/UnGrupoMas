PGDMP     (                
    x            RantiRantiProyecto    12.4    12.4 W    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25816    RantiRantiProyecto    DATABASE     �   CREATE DATABASE "RantiRantiProyecto" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
 $   DROP DATABASE "RantiRantiProyecto";
                postgres    false            �            1259    25817    categoria_productos    TABLE     �   CREATE TABLE public.categoria_productos (
    idtipoprod character(10) NOT NULL,
    nombretipoprod character(15) NOT NULL,
    fototipoprod character(200)
);
 '   DROP TABLE public.categoria_productos;
       public         heap    postgres    false            �            1259    25820    categoria_recetas    TABLE     �   CREATE TABLE public.categoria_recetas (
    idtiporeceta character(10) NOT NULL,
    nombretiporeceta character(15) NOT NULL,
    fototiporece character(200)
);
 %   DROP TABLE public.categoria_recetas;
       public         heap    postgres    false            �            1259    25823 
   direccions    TABLE       CREATE TABLE public.direccions (
    iddireccion character(20) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    calleprincipal character(30) NOT NULL,
    callesecundaria character(30) NOT NULL,
    imagendireccion character(254),
    numerodecasa character(15) NOT NULL
);
    DROP TABLE public.direccions;
       public         heap    postgres    false            �            1259    26308    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    26306    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    218            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    217            �            1259    25835    informacion_clientes    TABLE     �   CREATE TABLE public.informacion_clientes (
    idcedulacliente character(10) NOT NULL,
    user_id bigint,
    telefonocliente character(10) NOT NULL,
    nombrecliente character(30) NOT NULL,
    generocliente character(6)
);
 (   DROP TABLE public.informacion_clientes;
       public         heap    postgres    false            �            1259    25838    medidas    TABLE     n   CREATE TABLE public.medidas (
    idmedida character(10) NOT NULL,
    nombremedida character(20) NOT NULL
);
    DROP TABLE public.medidas;
       public         heap    postgres    false            �            1259    25841 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    25844    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    207            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    208            �            1259    26299    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    25852    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    idpedido character(10) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    fechapedido date NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    25981 	   productos    TABLE     �  CREATE TABLE public.productos (
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
       public         heap    postgres    false            �            1259    25858    productoxpedidos    TABLE     �   CREATE TABLE public.productoxpedidos (
    idpedido character(10) NOT NULL,
    idproducto character(10) NOT NULL,
    subtotal numeric(6,2) NOT NULL,
    iva numeric(6,2) NOT NULL,
    tap numeric(6,2) NOT NULL
);
 $   DROP TABLE public.productoxpedidos;
       public         heap    postgres    false            �            1259    25861    recetas    TABLE     �   CREATE TABLE public.recetas (
    idreceta character(10) NOT NULL,
    id bigint,
    idtiporeceta character(10) NOT NULL,
    nombrereceta character(50) NOT NULL,
    descripcionreceta character(1000) NOT NULL,
    imagenreceta character(254)
);
    DROP TABLE public.recetas;
       public         heap    postgres    false            �            1259    25867    recetaxproductos    TABLE     �   CREATE TABLE public.recetaxproductos (
    idproducto character(10) NOT NULL,
    idreceta character(10) NOT NULL,
    cantidad character(50)
);
 $   DROP TABLE public.recetaxproductos;
       public         heap    postgres    false            �            1259    26288    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    26286    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �
           2604    26311    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �
           2604    25879    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �
           2604    26291    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            v          0    25817    categoria_productos 
   TABLE DATA           W   COPY public.categoria_productos (idtipoprod, nombretipoprod, fototipoprod) FROM stdin;
    public          postgres    false    202   dh       w          0    25820    categoria_recetas 
   TABLE DATA           Y   COPY public.categoria_recetas (idtiporeceta, nombretiporeceta, fototiporece) FROM stdin;
    public          postgres    false    203   %i       x          0    25823 
   direccions 
   TABLE DATA           �   COPY public.direccions (iddireccion, idcedulacliente, calleprincipal, callesecundaria, imagendireccion, numerodecasa) FROM stdin;
    public          postgres    false    204   �i       �          0    26308    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    218   �i       y          0    25835    informacion_clientes 
   TABLE DATA           w   COPY public.informacion_clientes (idcedulacliente, user_id, telefonocliente, nombrecliente, generocliente) FROM stdin;
    public          postgres    false    205   �i       z          0    25838    medidas 
   TABLE DATA           9   COPY public.medidas (idmedida, nombremedida) FROM stdin;
    public          postgres    false    206   �j       {          0    25841 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    207   k       �          0    26299    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    216   wk       }          0    25852    pedidos 
   TABLE DATA           I   COPY public.pedidos (idpedido, idcedulacliente, fechapedido) FROM stdin;
    public          postgres    false    209   �k       �          0    25981 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, idtipoprod, nombreproducto, detalle, tamanoproducto, cantidadproducto, precioproducto, imagenproducto, idmedida, created_at, updated_at) FROM stdin;
    public          postgres    false    213   �k       ~          0    25858    productoxpedidos 
   TABLE DATA           T   COPY public.productoxpedidos (idpedido, idproducto, subtotal, iva, tap) FROM stdin;
    public          postgres    false    210   �m                 0    25861    recetas 
   TABLE DATA           l   COPY public.recetas (idreceta, id, idtiporeceta, nombrereceta, descripcionreceta, imagenreceta) FROM stdin;
    public          postgres    false    211   �m       �          0    25867    recetaxproductos 
   TABLE DATA           J   COPY public.recetaxproductos (idproducto, idreceta, cantidad) FROM stdin;
    public          postgres    false    212   �s       �          0    26288    users 
   TABLE DATA           �   COPY public.users (id, idcedulacliente, name, email, rol, email_verified_at, password, fotouser, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    215   !t       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    217            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);
          public          postgres    false    208            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    214            �
           2606    26317    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    218            �
           2606    25884    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    207            �
           2606    25886 )   categoria_productos pk_categoria_producto 
   CONSTRAINT     o   ALTER TABLE ONLY public.categoria_productos
    ADD CONSTRAINT pk_categoria_producto PRIMARY KEY (idtipoprod);
 S   ALTER TABLE ONLY public.categoria_productos DROP CONSTRAINT pk_categoria_producto;
       public            postgres    false    202            �
           2606    25888    direccions pk_direccion 
   CONSTRAINT     ^   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT pk_direccion PRIMARY KEY (iddireccion);
 A   ALTER TABLE ONLY public.direccions DROP CONSTRAINT pk_direccion;
       public            postgres    false    204            �
           2606    25890 +   informacion_clientes pk_informacion_cliente 
   CONSTRAINT     v   ALTER TABLE ONLY public.informacion_clientes
    ADD CONSTRAINT pk_informacion_cliente PRIMARY KEY (idcedulacliente);
 U   ALTER TABLE ONLY public.informacion_clientes DROP CONSTRAINT pk_informacion_cliente;
       public            postgres    false    205            �
           2606    25892    medidas pk_medida 
   CONSTRAINT     U   ALTER TABLE ONLY public.medidas
    ADD CONSTRAINT pk_medida PRIMARY KEY (idmedida);
 ;   ALTER TABLE ONLY public.medidas DROP CONSTRAINT pk_medida;
       public            postgres    false    206            �
           2606    25894    pedidos pk_pedido 
   CONSTRAINT     U   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_pedido PRIMARY KEY (idpedido);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_pedido;
       public            postgres    false    209            �
           2606    26061    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            postgres    false    213            �
           2606    25898 #   productoxpedidos pk_productoxpedido 
   CONSTRAINT     s   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT pk_productoxpedido PRIMARY KEY (idpedido, idproducto);
 M   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT pk_productoxpedido;
       public            postgres    false    210    210            �
           2606    25900    recetas pk_recetas 
   CONSTRAINT     V   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT pk_recetas PRIMARY KEY (idreceta);
 <   ALTER TABLE ONLY public.recetas DROP CONSTRAINT pk_recetas;
       public            postgres    false    211            �
           2606    25902     categoria_recetas pk_tipo_receta 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria_recetas
    ADD CONSTRAINT pk_tipo_receta PRIMARY KEY (idtiporeceta);
 J   ALTER TABLE ONLY public.categoria_recetas DROP CONSTRAINT pk_tipo_receta;
       public            postgres    false    203            �
           2606    26298    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    215            �
           2606    26296    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �
           1259    25907    administra2_fk    INDEX     @   CREATE INDEX administra2_fk ON public.recetas USING btree (id);
 "   DROP INDEX public.administra2_fk;
       public            postgres    false    211            �
           1259    25909    categoria_producto_pk    INDEX     b   CREATE UNIQUE INDEX categoria_producto_pk ON public.categoria_productos USING btree (idtipoprod);
 )   DROP INDEX public.categoria_producto_pk;
       public            postgres    false    202            �
           1259    26100    clasificar_fk    INDEX     G   CREATE INDEX clasificar_fk ON public.productos USING btree (idmedida);
 !   DROP INDEX public.clasificar_fk;
       public            postgres    false    213            �
           1259    25911    direccion_pk    INDEX     Q   CREATE UNIQUE INDEX direccion_pk ON public.direccions USING btree (iddireccion);
     DROP INDEX public.direccion_pk;
       public            postgres    false    204            �
           1259    25912    informacion_cliente_pk    INDEX     i   CREATE UNIQUE INDEX informacion_cliente_pk ON public.informacion_clientes USING btree (idcedulacliente);
 *   DROP INDEX public.informacion_cliente_pk;
       public            postgres    false    205            �
           1259    25913 	   medida_pk    INDEX     H   CREATE UNIQUE INDEX medida_pk ON public.medidas USING btree (idmedida);
    DROP INDEX public.medida_pk;
       public            postgres    false    206            �
           1259    26305    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    216            �
           1259    25915 	   pedido_pk    INDEX     H   CREATE UNIQUE INDEX pedido_pk ON public.pedidos USING btree (idpedido);
    DROP INDEX public.pedido_pk;
       public            postgres    false    209            �
           1259    26064    pertenece_a_fk    INDEX     J   CREATE INDEX pertenece_a_fk ON public.productos USING btree (idtipoprod);
 "   DROP INDEX public.pertenece_a_fk;
       public            postgres    false    213            �
           1259    25917    pertenece_fk    INDEX     H   CREATE INDEX pertenece_fk ON public.recetas USING btree (idtiporeceta);
     DROP INDEX public.pertenece_fk;
       public            postgres    false    211            �
           1259    25918 	   posee2_fk    INDEX     M   CREATE INDEX posee2_fk ON public.informacion_clientes USING btree (user_id);
    DROP INDEX public.posee2_fk;
       public            postgres    false    205            �
           1259    26065    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            postgres    false    213            �
           1259    25920    productoxpedido2_fk    INDEX     T   CREATE INDEX productoxpedido2_fk ON public.productoxpedidos USING btree (idpedido);
 '   DROP INDEX public.productoxpedido2_fk;
       public            postgres    false    210            �
           1259    25921    productoxpedido_fk    INDEX     U   CREATE INDEX productoxpedido_fk ON public.productoxpedidos USING btree (idproducto);
 &   DROP INDEX public.productoxpedido_fk;
       public            postgres    false    210            �
           1259    25922    productoxpedido_pk    INDEX     f   CREATE UNIQUE INDEX productoxpedido_pk ON public.productoxpedidos USING btree (idpedido, idproducto);
 &   DROP INDEX public.productoxpedido_pk;
       public            postgres    false    210    210            �
           1259    25923 
   realiza_fk    INDEX     I   CREATE INDEX realiza_fk ON public.pedidos USING btree (idcedulacliente);
    DROP INDEX public.realiza_fk;
       public            postgres    false    209            �
           1259    25924 
   recetas_pk    INDEX     I   CREATE UNIQUE INDEX recetas_pk ON public.recetas USING btree (idreceta);
    DROP INDEX public.recetas_pk;
       public            postgres    false    211            �
           1259    25925    recetaxproducto2_fk    INDEX     V   CREATE INDEX recetaxproducto2_fk ON public.recetaxproductos USING btree (idproducto);
 '   DROP INDEX public.recetaxproducto2_fk;
       public            postgres    false    212            �
           1259    25926    recetaxproducto_fk    INDEX     S   CREATE INDEX recetaxproducto_fk ON public.recetaxproductos USING btree (idreceta);
 &   DROP INDEX public.recetaxproducto_fk;
       public            postgres    false    212            �
           1259    25927    recetaxproducto_pk    INDEX     f   CREATE UNIQUE INDEX recetaxproducto_pk ON public.recetaxproductos USING btree (idproducto, idreceta);
 &   DROP INDEX public.recetaxproducto_pk;
       public            postgres    false    212    212            �
           1259    25928    tiene_fk    INDEX     J   CREATE INDEX tiene_fk ON public.direccions USING btree (idcedulacliente);
    DROP INDEX public.tiene_fk;
       public            postgres    false    204            �
           1259    25929    tipo_receta_pk    INDEX     [   CREATE UNIQUE INDEX tipo_receta_pk ON public.categoria_recetas USING btree (idtiporeceta);
 "   DROP INDEX public.tipo_receta_pk;
       public            postgres    false    203            �
           2606    25930 %   direccions fk_direccio_tiene_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT fk_direccio_tiene_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.direccions DROP CONSTRAINT fk_direccio_tiene_informac;
       public          postgres    false    205    2764    204            �
           2606    25935 "   pedidos fk_pedido_realiza_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_realiza_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_realiza_informac;
       public          postgres    false    205    209    2764            �
           2606    26101 &   productos fk_producto_clasifica_medida    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_clasifica_medida FOREIGN KEY (idmedida) REFERENCES public.medidas(idmedida) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_clasifica_medida;
       public          postgres    false    2768    213    206            �
           2606    26071 (   productos fk_producto_pertenece_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_pertenece_categori FOREIGN KEY (idtipoprod) REFERENCES public.categoria_productos(idtipoprod) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_pertenece_categori;
       public          postgres    false    2754    213    202            �
           2606    25950 -   productoxpedidos fk_producto_productox_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_pedido FOREIGN KEY (idpedido) REFERENCES public.pedidos(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_pedido;
       public          postgres    false    2773    209    210            �
           2606    25960 %   recetas fk_recetas_pertenece_tipo_rec    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_pertenece_tipo_rec FOREIGN KEY (idtiporeceta) REFERENCES public.categoria_recetas(idtiporeceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.recetas DROP CONSTRAINT fk_recetas_pertenece_tipo_rec;
       public          postgres    false    203    2756    211            �
           2606    25970 .   recetaxproductos fk_recetaxp_recetaxpr_recetas    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_recetas FOREIGN KEY (idreceta) REFERENCES public.recetas(idreceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_recetas;
       public          postgres    false    212    211    2783            �
           2606    26318    users fk_users_posee_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_posee_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_posee_informac;
       public          postgres    false    2764    215    205            v   �   x���=�@�z�sI���cc$V6�b2��w�e�
3�{���K��%[,�$�+[��Ş4��IG��G��ul�PA"m�ڑ���rv%U�箜8w>�����JO��Mʕ���R�.��{�Yž���G8pQWqF�b�G�h��Gz���1v�D4������.      w   �   x�sr�5T N�������3*��U��0��3З�`&�Kjqbei^~1D�3������t��-M-�ʇJq&B�C܋?���A��)��Y�uB�hfr�%�!2d1�?�=����� ���      x      x������ � �      �      x������ � �      y   �   x�u�;�0�z}
� ��M �4Id�HK���,?	���͛[�PR� �������M�����Î�(���h��HA7�<�!wM����㭺L�*�u�L:��;� 	»G��t�'��.�ZM{?�6�F+ZB喢(�@�����p�O�o��	�A�<����+���Y�����#M�M����1v�O�      z   .   x��5T�N�̤��Ĕ�b��5�ˇ�e�$��"K+p��qqq ��n      {   _   x�U�;
�@���F�w��A٬x}Y�)��?�����0���L��r���n��4�R��T��3��şi����gf�u��1~�P�z�,      �      x������ � �      }      x������ � �      �     x���j�0����8�$ۊ.����d��7����6n�Bުϰ/��ȉ@�/K�!�!����ѱ�� ��E�ퟻ�8��.�ʂ>5浤�"���OL؊�W��Z������ѹ��0C� D}�����-w;7ҁ^���� U��;�H�Wؙ�����z���]K���~A��olg�U���̛����~pZ�C� �E"���u��4��������D�}���솉"�_s��v�R���>����� ���=_�;.c$����zA1 ��l��QF���=���$�]~"�����̡����i��>Up�1D����}u�@�~g��v�gp�h女-�v���iMG��63�u�w�Ӡb�A������l3M*�w���P�����w�Q�2Wv����,�+k����$���@�$�~�.!Y{�
�v���`��z��0��}���,���^���,ḏ����wS��q����lɭ�a|�7%��5Ϯa!ă6�_A�"C�;      ~      x������ � �         �  x���r�6���S���3�*ɉ�'M�i�I܌���ˊ�)x@�HM�G��C&7OOՋ��I;q;ɡm2�v�4EbR��cuzo<�(��������^�i�2���R����`n�������(�ʼSd��@C�k����q�6�W�VTo��H�ظ�+R�Ժ�pPm4��+�C_Ǿ�%4�X��뢉5�D88������Ԓ�F٬U��*���[lߐ��zBkE�c��=E�k4�Rն����Bg|�Ê�Q��w�e�-��Qw���J�l_E_�H9�-9QU*|�v���ug;��l09���#����O�7&��*>u������rz�>c�a�W:f���E�df�oݣ�p�Num�f�P�0H,��y�h�a�G���5���*��RV'�$����hmk�핶^�<��>�jM$g��,�/v���@[��}�8��>�tѸ�:��,�I��F��W7�u�vL����T�iظ�m�~J^��G��PeX]?��R���Ѱ&W��w�IL8:�N��%GK�/��Ʉ���h��R[��U�CmXb�/�x�t�k�g��|�*�&��M�0�tf*�1�f���|GB��s\�d�hS>̊�
�E��L�E�U��P&���Ƚa/W׬��Z�KHA�XV��Kq��$Y˪Uo2Ɣ�)��WN�˂���b9�Fơ�5+�,߾�$ۋa|���j�$w`��W`Fz������	F������Ρ���=�c�E�hInCL��v�E:R/i㝨;hMp�y�6P�TI�4"��F�gWs�Mr��Z�>�z��䄄�#%r��ZR*(W���ht�{I�Dd�,�d��ds?�N��!���Cn�2��	m�W,�E�Ȗ�����b��4��H-�J
��X�9���*5r�rhP���֦��J�-,�o��m��"H��&V�(�C��8^�x��b�/�}F���ܾ�^X�z�(�n%�PĄ��h,TȌ+1A�cE/R�F�z��y���<L�rϘ���Eã�3��x���7���~g��� ݟ=��~=(���|w_����39��1Xb���G�%��L+�xǉM)E����'M��N�%�E��2-k�[��rR�v�*�ˏԌ���]�� \��٘dϞ5k`�
�ze0u;�-� R7��N�Ҍ�	C� Y�&t1�`*��R��đi��5z��	kb.�z<�B��>�	=�V+�����;���S�������'�ǳӓ����'���OP�TN��hƻ��W��v�"
z�����i�*�Ug(�r}��M����>F�)��sJ.�R�+�ɨ-"|��sj��/�:���K�Rv�`�v��0ʠ��Qu�ee�oD�]�e@(r����TI��Br���ŵ~v�f(�M��S|
Bj+�d�[H�[�m_��鱤����f������'����ãg�ӳ�'�������/���흏����/^c�      �   H   x�s�500V �  ���rF�@f(Ƹ$1�2R��L*J,VHIU p��daB"��A1z\\\ ��$6      �   �   x�3�����H�+�tL����H���)�,N420wH�M���K���L��e�%���t�U��dUT�ye�X昆��E�Zx�y��W�'fGD��{���%x�����U8z�rf��&��䥃�#�=... ��,	     