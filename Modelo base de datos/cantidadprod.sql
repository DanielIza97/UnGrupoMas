PGDMP         *            	    x            Ranti    12.2    12.2     0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    17154    Ranti    DATABASE     �   CREATE DATABASE "Ranti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE "Ranti";
                postgres    false            �            1259    17193 	   productos    TABLE     �   CREATE TABLE public.productos (
    idproducto character(10) NOT NULL,
    nombreproducto character(30) NOT NULL,
    cantidadproducto integer NOT NULL,
    precioproducto real NOT NULL,
    imagenproducto character(254)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            -          0    17193 	   productos 
   TABLE DATA           q   COPY public.productos (idproducto, nombreproducto, cantidadproducto, precioproducto, imagenproducto) FROM stdin;
    public          postgres    false    212   �       �
           2606    17234    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            postgres    false    212            �
           1259    17251    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            postgres    false    212            -   \  x��Mn�0���)r�F;��:B�Z�t��
�N�z����F4�@=�'��ͧ��,� ��z��KjyJ&	)CY� �q�U!}0}����Sxpmd7��>g A�W\�P){�����aP��1d���C�B ��?���x'Ѧm�GJ���K���c�E�De�_j-g��W~��y��Q�r�r'�o<ʾ�j�[Z4t-x��q�Z��ԥ=%;3���3�8C�Jˬ�
��.�$*C����*U�{��	��򁨈�e���g=��e�ȋ�a�Q�JF^���D�}?y� �ׄ(�&���5!����]�n7�`�
э����m�1����     