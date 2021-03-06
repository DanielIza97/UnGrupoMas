PGDMP          ,            
    x            Pruebas    12.4    12.4     >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    24576    Pruebas    DATABASE     �   CREATE DATABASE "Pruebas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE "Pruebas";
                postgres    false            �            1259    24670 	   productos    TABLE     e  CREATE TABLE public.productos (
    idproducto character(10) NOT NULL,
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
       public         heap    postgres    false            ;          0    24670 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, idtipoprod, nombreproducto, detalle, tamanoproducto, cantidadproducto, precioproducto, imagenproducto, idmedida) FROM stdin;
    public          postgres    false    215   '       �
           2606    24707    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            postgres    false    215            �
           1259    24721    clasificar_fk    INDEX     G   CREATE INDEX clasificar_fk ON public.productos USING btree (idmedida);
 !   DROP INDEX public.clasificar_fk;
       public            postgres    false    215            �
           1259    24726    pertenece_a_fk    INDEX     J   CREATE INDEX pertenece_a_fk ON public.productos USING btree (idtipoprod);
 "   DROP INDEX public.pertenece_a_fk;
       public            postgres    false    215            �
           1259    24729    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            postgres    false    215            �
           2606    24750 &   productos fk_producto_clasifica_medida    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_clasifica_medida FOREIGN KEY (idmedida) REFERENCES public.medidas(idmedida) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_clasifica_medida;
       public          postgres    false    215            �
           2606    24755 (   productos fk_producto_pertenece_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_pertenece_categori FOREIGN KEY (idtipoprod) REFERENCES public.categoria_productos(idtipoprod) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_pertenece_categori;
       public          postgres    false    215            ;   �  x���n� ǯ�S�6J��.�dq�%��(�nZ�ֺdo�g؋JQ�0N�朔?i~��	B��R���cfV�"���!����,~�v���g�D�kx��@.��V�l������dlceA�3��^�"0o�Y5p+��Q��`�Q]�)����]*����� O���e�U֛'��WziJ6V>Co������$3��Y4���Z���!EP>�`31u03DZ-�$����؃��(=L��+�)f�Q�e����' ���,I犺�sQ�p��fd6R���Q��7�H�۱4�e��sQ�1��N�s3����p�0���Ɍ��X�����b=/���8�^<���\|�h86�u�۸O��C˃�4i����4�ڧ�8ɟ�GE�Q%�:�9e���E�Ǻ��(�ym x     