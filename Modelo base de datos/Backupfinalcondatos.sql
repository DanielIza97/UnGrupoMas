PGDMP          $            	    x            ProyectoRantiRanti    12.2    12.2 Z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41816    ProyectoRantiRanti    DATABASE     �   CREATE DATABASE "ProyectoRantiRanti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
 $   DROP DATABASE "ProyectoRantiRanti";
                postgres    false            �            1259    41817    categoria_productos    TABLE     �   CREATE TABLE public.categoria_productos (
    idtipoprod character(10) NOT NULL,
    nombretipoprod character(15) NOT NULL,
    fototipoprod character(200)
);
 '   DROP TABLE public.categoria_productos;
       public         heap    postgres    false            �            1259    41820    categoria_recetas    TABLE     �   CREATE TABLE public.categoria_recetas (
    idtiporeceta character(10) NOT NULL,
    nombretiporeceta character(15) NOT NULL,
    fototiporece character(200)
);
 %   DROP TABLE public.categoria_recetas;
       public         heap    postgres    false            �            1259    41823 
   direccions    TABLE       CREATE TABLE public.direccions (
    iddireccion character(20) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    calleprincipal character(30) NOT NULL,
    callesecundaria character(30) NOT NULL,
    imagendireccion character(254),
    numerodecasa character(15) NOT NULL
);
    DROP TABLE public.direccions;
       public         heap    postgres    false            �            1259    41826    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    41833    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    205            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    206            �            1259    41835    informacion_clientes    TABLE     �   CREATE TABLE public.informacion_clientes (
    idcedulacliente character(10) NOT NULL,
    user_id bigint,
    telefonocliente character(10) NOT NULL,
    nombrecliente character(30) NOT NULL,
    generocliente character(6)
);
 (   DROP TABLE public.informacion_clientes;
       public         heap    postgres    false            �            1259    41838    medidas    TABLE     n   CREATE TABLE public.medidas (
    idmedida character(10) NOT NULL,
    nombremedida character(20) NOT NULL
);
    DROP TABLE public.medidas;
       public         heap    postgres    false            �            1259    41841 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    41844    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    209            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    210            �            1259    41846    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    41852    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    idpedido character(10) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    fechapedido date NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    41855 	   productos    TABLE     �  CREATE TABLE public.productos (
    idproducto character(10) NOT NULL,
    idadministador bigint,
    idtipoprod character(10),
    nombreproducto character(30) NOT NULL,
    detalle character(100),
    tamanoproducto character(10),
    cantidadproducto numeric(6,0) NOT NULL,
    precioproducto numeric(6,2) NOT NULL,
    imagenproducto character(254),
    idmedida character(10)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    41858    productoxpedidos    TABLE     �   CREATE TABLE public.productoxpedidos (
    idpedido character(10) NOT NULL,
    idproducto character(10) NOT NULL,
    subtotal numeric(6,2) NOT NULL,
    iva numeric(6,2) NOT NULL,
    tap numeric(6,2) NOT NULL
);
 $   DROP TABLE public.productoxpedidos;
       public         heap    postgres    false            �            1259    41861    recetas    TABLE     �   CREATE TABLE public.recetas (
    idreceta character(10) NOT NULL,
    id bigint,
    idtiporeceta character(10) NOT NULL,
    nombrereceta character(50) NOT NULL,
    descripcionreceta character(1000) NOT NULL,
    imagenreceta character(254)
);
    DROP TABLE public.recetas;
       public         heap    postgres    false            �            1259    41867    recetaxproductos    TABLE     �   CREATE TABLE public.recetaxproductos (
    idproducto character(10) NOT NULL,
    idreceta character(10) NOT NULL,
    cantidad character(50)
);
 $   DROP TABLE public.recetaxproductos;
       public         heap    postgres    false            �            1259    41870    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    41876    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            �
           2604    41878    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    41879    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �
           2604    41880    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            x          0    41817    categoria_productos 
   TABLE DATA           W   COPY public.categoria_productos (idtipoprod, nombretipoprod, fototipoprod) FROM stdin;
    public          postgres    false    202   m       y          0    41820    categoria_recetas 
   TABLE DATA           Y   COPY public.categoria_recetas (idtiporeceta, nombretiporeceta, fototiporece) FROM stdin;
    public          postgres    false    203   �m       z          0    41823 
   direccions 
   TABLE DATA           �   COPY public.direccions (iddireccion, idcedulacliente, calleprincipal, callesecundaria, imagendireccion, numerodecasa) FROM stdin;
    public          postgres    false    204   fn       {          0    41826    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    205   �n       }          0    41835    informacion_clientes 
   TABLE DATA           w   COPY public.informacion_clientes (idcedulacliente, user_id, telefonocliente, nombrecliente, generocliente) FROM stdin;
    public          postgres    false    207   �n       ~          0    41838    medidas 
   TABLE DATA           9   COPY public.medidas (idmedida, nombremedida) FROM stdin;
    public          postgres    false    208   o                 0    41841 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    209   Mo       �          0    41846    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    211   �o       �          0    41852    pedidos 
   TABLE DATA           I   COPY public.pedidos (idpedido, idcedulacliente, fechapedido) FROM stdin;
    public          postgres    false    212   �o       �          0    41855 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, idadministador, idtipoprod, nombreproducto, detalle, tamanoproducto, cantidadproducto, precioproducto, imagenproducto, idmedida) FROM stdin;
    public          postgres    false    213   �o       �          0    41858    productoxpedidos 
   TABLE DATA           T   COPY public.productoxpedidos (idpedido, idproducto, subtotal, iva, tap) FROM stdin;
    public          postgres    false    214   �q       �          0    41861    recetas 
   TABLE DATA           l   COPY public.recetas (idreceta, id, idtiporeceta, nombrereceta, descripcionreceta, imagenreceta) FROM stdin;
    public          postgres    false    215   �q       �          0    41867    recetaxproductos 
   TABLE DATA           J   COPY public.recetaxproductos (idproducto, idreceta, cantidad) FROM stdin;
    public          postgres    false    216   �w       �          0    41870    users 
   TABLE DATA           �   COPY public.users (id, idcedulacliente, name, email, rol, email_verified_at, password, fotouser, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    217   x       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    206            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public          postgres    false    210            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    218            �
           2606    41882    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    205            �
           2606    41884    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    209            �
           2606    41886 )   categoria_productos pk_categoria_producto 
   CONSTRAINT     o   ALTER TABLE ONLY public.categoria_productos
    ADD CONSTRAINT pk_categoria_producto PRIMARY KEY (idtipoprod);
 S   ALTER TABLE ONLY public.categoria_productos DROP CONSTRAINT pk_categoria_producto;
       public            postgres    false    202            �
           2606    41888    direccions pk_direccion 
   CONSTRAINT     ^   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT pk_direccion PRIMARY KEY (iddireccion);
 A   ALTER TABLE ONLY public.direccions DROP CONSTRAINT pk_direccion;
       public            postgres    false    204            �
           2606    41890 +   informacion_clientes pk_informacion_cliente 
   CONSTRAINT     v   ALTER TABLE ONLY public.informacion_clientes
    ADD CONSTRAINT pk_informacion_cliente PRIMARY KEY (idcedulacliente);
 U   ALTER TABLE ONLY public.informacion_clientes DROP CONSTRAINT pk_informacion_cliente;
       public            postgres    false    207            �
           2606    41892    medidas pk_medida 
   CONSTRAINT     U   ALTER TABLE ONLY public.medidas
    ADD CONSTRAINT pk_medida PRIMARY KEY (idmedida);
 ;   ALTER TABLE ONLY public.medidas DROP CONSTRAINT pk_medida;
       public            postgres    false    208            �
           2606    41894    pedidos pk_pedido 
   CONSTRAINT     U   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_pedido PRIMARY KEY (idpedido);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_pedido;
       public            postgres    false    212            �
           2606    41896    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            postgres    false    213            �
           2606    41898 #   productoxpedidos pk_productoxpedido 
   CONSTRAINT     s   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT pk_productoxpedido PRIMARY KEY (idpedido, idproducto);
 M   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT pk_productoxpedido;
       public            postgres    false    214    214            �
           2606    41900    recetas pk_recetas 
   CONSTRAINT     V   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT pk_recetas PRIMARY KEY (idreceta);
 <   ALTER TABLE ONLY public.recetas DROP CONSTRAINT pk_recetas;
       public            postgres    false    215            �
           2606    41904     categoria_recetas pk_tipo_receta 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria_recetas
    ADD CONSTRAINT pk_tipo_receta PRIMARY KEY (idtiporeceta);
 J   ALTER TABLE ONLY public.categoria_recetas DROP CONSTRAINT pk_tipo_receta;
       public            postgres    false    203            �
           2606    41906    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    217            �
           2606    41908    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �
           1259    41909    administra2_fk    INDEX     @   CREATE INDEX administra2_fk ON public.recetas USING btree (id);
 "   DROP INDEX public.administra2_fk;
       public            postgres    false    215            �
           1259    41910    administra_fk    INDEX     M   CREATE INDEX administra_fk ON public.productos USING btree (idadministador);
 !   DROP INDEX public.administra_fk;
       public            postgres    false    213            �
           1259    41911    categoria_producto_pk    INDEX     b   CREATE UNIQUE INDEX categoria_producto_pk ON public.categoria_productos USING btree (idtipoprod);
 )   DROP INDEX public.categoria_producto_pk;
       public            postgres    false    202            �
           1259    41912    clasificar_fk    INDEX     G   CREATE INDEX clasificar_fk ON public.productos USING btree (idmedida);
 !   DROP INDEX public.clasificar_fk;
       public            postgres    false    213            �
           1259    41913    direccion_pk    INDEX     Q   CREATE UNIQUE INDEX direccion_pk ON public.direccions USING btree (iddireccion);
     DROP INDEX public.direccion_pk;
       public            postgres    false    204            �
           1259    41914    informacion_cliente_pk    INDEX     i   CREATE UNIQUE INDEX informacion_cliente_pk ON public.informacion_clientes USING btree (idcedulacliente);
 *   DROP INDEX public.informacion_cliente_pk;
       public            postgres    false    207            �
           1259    41915 	   medida_pk    INDEX     H   CREATE UNIQUE INDEX medida_pk ON public.medidas USING btree (idmedida);
    DROP INDEX public.medida_pk;
       public            postgres    false    208            �
           1259    41916    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    211            �
           1259    41917 	   pedido_pk    INDEX     H   CREATE UNIQUE INDEX pedido_pk ON public.pedidos USING btree (idpedido);
    DROP INDEX public.pedido_pk;
       public            postgres    false    212            �
           1259    41918    pertenece_a_fk    INDEX     J   CREATE INDEX pertenece_a_fk ON public.productos USING btree (idtipoprod);
 "   DROP INDEX public.pertenece_a_fk;
       public            postgres    false    213            �
           1259    41919    pertenece_fk    INDEX     H   CREATE INDEX pertenece_fk ON public.recetas USING btree (idtiporeceta);
     DROP INDEX public.pertenece_fk;
       public            postgres    false    215            �
           1259    41920 	   posee2_fk    INDEX     M   CREATE INDEX posee2_fk ON public.informacion_clientes USING btree (user_id);
    DROP INDEX public.posee2_fk;
       public            postgres    false    207            �
           1259    41921    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            postgres    false    213            �
           1259    41922    productoxpedido2_fk    INDEX     T   CREATE INDEX productoxpedido2_fk ON public.productoxpedidos USING btree (idpedido);
 '   DROP INDEX public.productoxpedido2_fk;
       public            postgres    false    214            �
           1259    41923    productoxpedido_fk    INDEX     U   CREATE INDEX productoxpedido_fk ON public.productoxpedidos USING btree (idproducto);
 &   DROP INDEX public.productoxpedido_fk;
       public            postgres    false    214            �
           1259    41924    productoxpedido_pk    INDEX     f   CREATE UNIQUE INDEX productoxpedido_pk ON public.productoxpedidos USING btree (idpedido, idproducto);
 &   DROP INDEX public.productoxpedido_pk;
       public            postgres    false    214    214            �
           1259    41925 
   realiza_fk    INDEX     I   CREATE INDEX realiza_fk ON public.pedidos USING btree (idcedulacliente);
    DROP INDEX public.realiza_fk;
       public            postgres    false    212            �
           1259    41926 
   recetas_pk    INDEX     I   CREATE UNIQUE INDEX recetas_pk ON public.recetas USING btree (idreceta);
    DROP INDEX public.recetas_pk;
       public            postgres    false    215            �
           1259    41927    recetaxproducto2_fk    INDEX     V   CREATE INDEX recetaxproducto2_fk ON public.recetaxproductos USING btree (idproducto);
 '   DROP INDEX public.recetaxproducto2_fk;
       public            postgres    false    216            �
           1259    41928    recetaxproducto_fk    INDEX     S   CREATE INDEX recetaxproducto_fk ON public.recetaxproductos USING btree (idreceta);
 &   DROP INDEX public.recetaxproducto_fk;
       public            postgres    false    216            �
           1259    41929    recetaxproducto_pk    INDEX     f   CREATE UNIQUE INDEX recetaxproducto_pk ON public.recetaxproductos USING btree (idproducto, idreceta);
 &   DROP INDEX public.recetaxproducto_pk;
       public            postgres    false    216    216            �
           1259    41930    tiene_fk    INDEX     J   CREATE INDEX tiene_fk ON public.direccions USING btree (idcedulacliente);
    DROP INDEX public.tiene_fk;
       public            postgres    false    204            �
           1259    41931    tipo_receta_pk    INDEX     [   CREATE UNIQUE INDEX tipo_receta_pk ON public.categoria_recetas USING btree (idtiporeceta);
 "   DROP INDEX public.tipo_receta_pk;
       public            postgres    false    203            �
           2606    41932 %   direccions fk_direccio_tiene_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT fk_direccio_tiene_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.direccions DROP CONSTRAINT fk_direccio_tiene_informac;
       public          postgres    false    204    2765    207            �
           2606    41937 "   pedidos fk_pedido_realiza_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_realiza_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_realiza_informac;
       public          postgres    false    212    207    2765            �
           2606    41942 &   productos fk_producto_clasifica_medida    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_clasifica_medida FOREIGN KEY (idmedida) REFERENCES public.medidas(idmedida) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_clasifica_medida;
       public          postgres    false    2769    213    208            �
           2606    41947 (   productos fk_producto_pertenece_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_pertenece_categori FOREIGN KEY (idtipoprod) REFERENCES public.categoria_productos(idtipoprod) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_pertenece_categori;
       public          postgres    false    202    2753    213            �
           2606    41952 -   productoxpedidos fk_producto_productox_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_pedido FOREIGN KEY (idpedido) REFERENCES public.pedidos(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_pedido;
       public          postgres    false    214    2775    212            �
           2606    41957 /   productoxpedidos fk_producto_productox_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_producto FOREIGN KEY (idproducto) REFERENCES public.productos(idproducto) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_producto;
       public          postgres    false    2781    213    214            �
           2606    41962 %   recetas fk_recetas_pertenece_tipo_rec    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_pertenece_tipo_rec FOREIGN KEY (idtiporeceta) REFERENCES public.categoria_recetas(idtiporeceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.recetas DROP CONSTRAINT fk_recetas_pertenece_tipo_rec;
       public          postgres    false    2755    203    215            �
           2606    41967 /   recetaxproductos fk_recetaxp_recetaxpr_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_producto FOREIGN KEY (idproducto) REFERENCES public.productos(idproducto) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_producto;
       public          postgres    false    213    216    2781            �
           2606    41972 .   recetaxproductos fk_recetaxp_recetaxpr_recetas    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_recetas FOREIGN KEY (idreceta) REFERENCES public.recetas(idreceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_recetas;
       public          postgres    false    2791    215    216            �
           2606    41977    users fk_users_posee_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_posee_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_posee_informac;
       public          postgres    false    2765    207    217            x   �   x���=�@�z�sI���cc$V6�b2��w�e�
3�{���K��%[,�$�+[��Ş4��IG��G��ul�PA"m�ڑ���rv%U�箜8w>�����JO��Mʕ���R�.��{�Yž���G8pQWqF�b�G�h��Gz���1v�D4������.      y   �   x�sr�5T N�������3*��U��0��3З�`&�Kjqbei^~1D�3������t��-M-�ʇJq&B�C܋?���A��)��Y�uB�hfr�%�!2d1�?�=����� ���      z      x������ � �      {      x������ � �      }   _   x�34206415���4�4��0574216��M,J�W��W�8c��͍LL-́�99,�MM��,-@:3�|�R������M*J����� ��      ~   .   x��5T�N�̤��Ĕ�b��5�ˇ�e�$��"K+p��qqq ��n         ]   x�U�A
�0Dѵ9�$EP�"U#(B%�x}эv����KaH ��d��t5G�㮕P����~%�a�?�?�wx� K\w����ˇ��ng+{      �      x������ � �      �      x������ � �      �   �  x���n�0���)��C�`�Y���4Kv�M���)% .�[��b��Չ�6�	�����M (��_p��~���61�� 	 9�P�W�Q�����i~��pf� jU�fL2��,~Q���)��o���&�9o�I5d#�FR�:qؔ2���`J{�S���c&���k��(`&��#�jv�2`Gy�s� �i����l��|�$��DCJ��ŽR�(2 ��A5ņH��@�j�S0Ʌ祠-�Q~��.�ashp�{`�9�)KY�J8�C�lM}��D��{�.u�T%ٵ���v��Q� :{x��,;�����T��(���k;����y/s���syǞ)F+Q��:��� нS��CgW��Vy.>��u�B�?Bw��,F���;�)�ɢf�%�됬�(�����9s�F�W��)�6�u���/�)      �      x������ � �      �   �  x���n�F���SlOI E�dǎۓM
��'_F�Zc���B�G���C���S�b��%)�p�"M�h ə����g8{:�[���b6}�,�:_j�*Ee}e���{� ��?�3fG�9�0��Ш��CVaY�Z)�.7#PAg�FKW�`��w�g#��XN%�ӪR�M�+�j�y�@y���Y�J�sl0sX@�p���a���|t>qsy���bP��`���@�ڂw4��3�a��,����L�s�W�`�һu���c|`N�R���.嶝�K�����%���9>� �ݺ^�-������D�:������������s�����������dv���h:9�;\ٗ��߰��t$�-H�_S��"u��7e>l��"�5r�(�u��CE��*u�:Tԏ�-�fު"ޭ:`Q,����	%!�-��+0]��q�b�<�!�UƠ] �ȫ�*1/<X'�+�`	�/��Nq����HA�qۦʘ��
����V ({>�(YTD�w�~�{��JQ՗��ʂ�.YK�O��nmk�݄����������{ッ�����)�ܕݻ�t	ӏ&z�!��7�����#s�Tg��	-$�P4ӛ��w��9K���.1#њ F'�'T}�'
V�����,d,v4�{B[��]�8��.�tV�t��&�c��!]�k���nL���$(s�r�m:��K?&����K��Z,lӭ��bh�����[�"������r4�x��&m*��u�O9r��TL�����p�bY��K0$��R�L*�����:~*b�c��X��8'�9c���䲞�`J�!�XjR)��a��]Ɗ��9�b0�����I��;��b���5�<IAm���\�������/Qֲj�ub 
\��/�K+�˂���b�VA�Ri}y���č�9%��־k1z���	8hI��٘`t_v[���_�1%�'MA�
�-Gs�k`Bݵ;��M�\}kgE��(��!�+O��"�"�J����, �։n�u jg��uP|�i�?Ɲ�\P$���+R��N4���ur�i�����E��I]_���rl��竗�:فu}ŒZ�b�sI�I�	h=��Z�FR�j"�tR���)��b�kmV�vё|�_�a�x��+b���?ҡ�"����K啂������[J�n.��}ϣ��u*hQ��*cH-s+��T:�ܥ��(x�4��|��uʷI��a�g�`E/�^=$�m_�nSwG��7�p_U��Eo��ǐ���-̾�&,O���� M�����׍����S�|�1L9�f�q�
0R��K��e��kI��%�fR* �R,7P%_��k,o��Z�C͊�0ƞ&.5�Ԗp���+.�#�,u�� ^,�3N�{�RR�B���|�
׊�oc+
C�(�
>��E��t�Q��;�ո[�/Y+F�������'�������������t�l����' �q)      �   H   x�s�500V �  ���rF�@f(Ƹ$1�2R��L*J,VHIU p��daB"��A1z\\\ ��$6      �   .  x�U��r�0 E��+\�� �XZ�*�Z�a�P���:]�.�c Ұ��RT��
RS6�8�H� ~�"�/E��ZLYҚ�sO�q�x�#8�He�&|��LRtw�:#NRۆ�&J��bIK�i+{�W��͘u%k�9��xLa���Vf��H����&F&4�(���'+k((Ӓ�W�%jO��=;Ӯ�I��i5N�_nC�Vw��� ���"��t�%��$;�}=�o���y&}7�J�Cл|*;�En<l��b#�y��z����j[�O.�ι���n�^���GQ�0�t$     