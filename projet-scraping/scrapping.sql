PGDMP      
                }         	   scrapping    17.3    17.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16518 	   scrapping    DATABASE     o   CREATE DATABASE scrapping WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE scrapping;
                     postgres    false            �            1259    16530    tunisie_annonce    TABLE     �  CREATE TABLE public.tunisie_annonce (
    id integer NOT NULL,
    titre character varying(255),
    prix character varying(50),
    type_bien character varying(100),
    localisation character varying(100),
    superficie character varying(50),
    description text,
    contact character varying(50),
    date_publication character varying(50),
    lien text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.tunisie_annonce;
       public         heap r       postgres    false            �            1259    16529    tunisie_annonce_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tunisie_annonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tunisie_annonce_id_seq;
       public               postgres    false    218            �           0    0    tunisie_annonce_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tunisie_annonce_id_seq OWNED BY public.tunisie_annonce.id;
          public               postgres    false    217            !           2604    16533    tunisie_annonce id    DEFAULT     x   ALTER TABLE ONLY public.tunisie_annonce ALTER COLUMN id SET DEFAULT nextval('public.tunisie_annonce_id_seq'::regclass);
 A   ALTER TABLE public.tunisie_annonce ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    16530    tunisie_annonce 
   TABLE DATA           �   COPY public.tunisie_annonce (id, titre, prix, type_bien, localisation, superficie, description, contact, date_publication, lien, created_at) FROM stdin;
    public               postgres    false    218   <       �           0    0    tunisie_annonce_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tunisie_annonce_id_seq', 100, true);
          public               postgres    false    217            $           2606    16540 (   tunisie_annonce tunisie_annonce_lien_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.tunisie_annonce
    ADD CONSTRAINT tunisie_annonce_lien_key UNIQUE (lien);
 R   ALTER TABLE ONLY public.tunisie_annonce DROP CONSTRAINT tunisie_annonce_lien_key;
       public                 postgres    false    218            &           2606    16538 $   tunisie_annonce tunisie_annonce_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tunisie_annonce
    ADD CONSTRAINT tunisie_annonce_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tunisie_annonce DROP CONSTRAINT tunisie_annonce_pkey;
       public                 postgres    false    218            �      x��[[���~��<��hy�DE�Nڤi\�[�E�b$�J�yQ��b��m��y�{������I/��	���wf�)iiǥ8���\�s�ΙC�z+_���YT��E¢��z�ϒ--gj��yUJa�.�tΓ�[?8;�J!%�36����������?�1s=�fc&x5b۫D,0�".�W�*c�*.��t{�Q�!��1��*���d"�XWe�1V?�����}.#L<�Qg1��8��lūRT��� e�d�\��!3�`%v��lKv���7�>\����\���UY�o��������ȱx�gY�-�x��g����Iq�/}/M�y��B�y���"�~����y�l�^��W\���m?����Y�{�k�-��X ]'�}��Kyl�A���{�Ы�\)�^m�,YHw�����O�R�%�C�"Q=d|����ʂ��l������r��=�$��y6[Y�YF-*��ŭeI�W�kL̊��✭s��$i` �y�ْ1��
���Xi�F�I�̳�/��x<�%�g�tH	��c�H���}-�
h��6���W�MZ#g�E�� �J���'�O�\*��2�_�io0��1�т�6w!f	�+x�`�ڠ�r_q��B(��`���|�g�3Åcu��3�!�����z����o�#+!�p'�:��'�/
��R���1�[��˅������mQ�Z������%���E_��=�RI�x@#n���/�4��XM0bs�.�yU����˂ELqɡ��?��1�I�Н$�q!3�V΢��4��F�]�����8�'v/���ZR�9�9�.^r~�=s#��wx^�H�4龅_��O��u��Sr�#m�ޙ�t�f_����L��M���"�I�z��&���^�%���f�E'H�U���I.���̈7C%P�s�����\".�>�̚�GZ���b5C��Vƥv��4���i�	�,�p!��tP��îIG:8�&�(8nCX�Y�j���ж:��hj}G9�9l�� �B[٩g���8��X��6�yQ�;
\�����;��Ox.`F:��XT�	�_Kh��:P)�C�}UQ�`|#d� }!�)� Δ�k(�(�� �|E�̩^�B��o0�K#V�$�T���W�(���Q�'��	cFp��D��i7���n�.�ͫ�̭�a�֡I��tk���G�B4�df��Rc�����"ө���L��z�� ����5�51����DZ�X�:;s�՛���jh��%���O�m)�������\ι	�Z����9���՞ �$3�կy��8���v���r�K�R�_���� J�gip�gF�����Ng}88vG�}(��h�w�]O�-�i�ױf�����W�5�g牨�Wě8�DbPt�{Hm�C�vzQt�7��rEm_'�����$����j١Ķ���
Ƌ��

���1��	��w���F�p��iDN��X �X[رmݩ$�某�W�y��Y���Y�y�AR�wqSF��%(9��
���������9��{"��`d��P� �<ш�)
mtH}�h` ��`���hh]$&����L��;9��#%��X��/@bJ�+p�В1��1_1�+�mj����h�g�O+��(὘ZBI�|b *��f׋w#�`N�Mo������x���+ͳ�dyȩk@��kX�� ��Um��{/eܶ�^����������,��V�(�1�ݠ�!�/���F,�a���|*� H<S�D*��5�i-�^ȕ�}�WSn�Ğ�����ǝyv/��{�n��E�D�М�����T�%�"��]�"o ��w|�d$f��%�%����G�?�A���k^PR�񙔻����[�s��AwAPaQɺ�˳����
<���������`���&�U����cnr*�ut�W�Ξ����$��~$g�P��s�W�Qj���H{�\�łH
�l��R�VA��zK�bX��ڳ~b�*%Pd�%@%�6�h�QT^Oߥ��>�=���]p�������lw��~x���?׿`�+F����?�}q���ry���/�Ρ=�Tz�* y��v{k����yB5�\^���T��X���No[�W���9��W׿�}J��g��׻�}kl���������o2����uj��������H��!�;t�IU"������>����	�x����ϯC�~��+������u}:[闶:Zk"�E���N]�Qi�Q����P'cX� 2&#�*SY��2p��T�)�5��ɨ�^g�Mu������ Sv4�6�����t�pt��h���_�P��d ���<XQjf۽u���- �� �6 {�ϡ\��u�詜�U�{��Y�QS�a̵CEF�L����
S�aW���q}<�K܃1��{�i�o�PG���?�@h!_<Q����Sh\HD�,�P��V\֛�<7<�9���1�J�������;<2�5����ge��]�>A�K	�՜ ��:�zͦN��N��*8��Mf��$* �ۃ�	�����`PR �D[I	(��;�����ƚ���(��:��y;S�����U2"���}�o ũ>'(�a�E)e���Z����O?��lj��w��)��jΡ��y���4e��'����%�c���C�y�]Ӡ�u���O3�^�Ox:�~�ȱ��^��5;�z{#��ۂ�@T�v�pڏ���Ov�}n�`����#��Ԙ��>��[�l�U1��9��ӔK�:%�\�s;G���;x�<Mob���~��Na>"X>�G;ܟ�����u����	{���X��ѹA�5�r��-.vӹ��ڳ�%�����G�TI���RY�\�j�T��p�-�B�Ju8�`Z�4'Ep9<+��~]?���ԛ�������B�����L�bme��xf��[���:�R��m;m���y\zΚ}Y[q\;�S��?N����KAS���dzޞ�!-D��[��jM-S����Z���,��.=+sk#u�seL�GK�Ը��{lOe���}g��Z�=��^������p�!�O1ܣU��&]<�2�|d������Y��^��Hp"���ť$N���w]݋��@an'�-GMg�Go�N�\h�)�޿E����Rob\$�Ģ�9����[�}���J�4��i�-"�xo4�.��hV�∜�ʼ�|Mu���`�?	��y�7�^��i_W6q�2m����׺�W2.H����Qg+`����t���t
���6p��M�~2늜JU�38R�'�͒o��t`f�>��n�f၏4�p��,Z�Z�y�$�d�b�)ϲܮ��:��"��4��ݶO�T=����3��I�������r��V�������L���+��R(��@k�n�����H����j	窛�>Um�u��׃|gh���N�߳z�q�����(��찖�P��KA3��
$�_��U�`� �}	b�ǆ"�3���E���O�?A��TT��j�t�BG�rE��(�Eq�γ�2�qI!��ؚ#���n#�\&b�!��g|^�"�2_�=������}�ЁV?�����`w@�t�ϼ"_�$Є&�kn����ըB�+�qH1�9��rY�s^��ĞJ�c&1~q�_W����?QX�L9Sr��`�h�$�Q2'P�R���:��r���b^���mux���2M߳��u�E��7;��+�J�cB����b�n��Zc8D��}���-�������ԅ~�)�o}w�e�5�_��A.yg�uc�rZ�7(��Jũ�z�\��2����ԉ ����?���:�S�Ov��_�����߻'T�p��?��/�u&20��gO1���T��<)k:�(��	*�͛j'?����PUT��F�hͷW�y���"O��%ecxX��jʪږ�*j\P|���4�$ި#���?}��ĳ������O���U�5n�CB�+��uO-����+����S)�4nG}��/��c�/w����!��j)rk�����u�vA3v����*Q_!V4�p�t'��Sˇ�L��-�
b 8  ]|�+˙��a)s��)7�)�4������HΈ?�����s��~�63�ܯ�^��a��;<�A�Їlᴷ"��fz�^(��/7OK��BmE�.�,q������؅�75�������Z��Ū�� i>8p�C;�{JPp�,]�J�
 G -V���Ht�u�ev
�QS���cJ̷��ʣ� ��RW��%�"t9\�'UvQ��(u7�j���f팮�6�K!��wց��5�� �N蔷�❰2�D�{W�|�}�8�`{�>�ܔH��W�����w�q�n��?���OǷn���v>     