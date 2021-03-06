PGDMP     6    -                 y            rupesh    13.1    13.0 �    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            n           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            o           1262    16394    rupesh    DATABASE     j   CREATE DATABASE rupesh WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE rupesh;
                postgres    false            �            1259    16426 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16424    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            p           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    16436    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16434    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            q           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    16418    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16416    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            r           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    16444 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16454    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16452    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            s           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    16442    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            t           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            �            1259    16462    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16460 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            u           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            �            1259    16598 
   books_book    TABLE     �  CREATE TABLE public.books_book (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    author character varying(100) NOT NULL,
    publisher character varying(100) NOT NULL,
    language character varying(100) NOT NULL,
    pub_date date NOT NULL,
    description text NOT NULL,
    book_file character varying(100) NOT NULL,
    cover_image character varying(100) NOT NULL,
    categories character varying(100) NOT NULL
);
    DROP TABLE public.books_book;
       public         heap    postgres    false            �            1259    16751    books_book_favourites    TABLE     �   CREATE TABLE public.books_book_favourites (
    id integer NOT NULL,
    book_id integer NOT NULL,
    user_id integer NOT NULL
);
 )   DROP TABLE public.books_book_favourites;
       public         heap    postgres    false            �            1259    16749    books_book_favourites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_favourites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.books_book_favourites_id_seq;
       public          postgres    false    226            v           0    0    books_book_favourites_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.books_book_favourites_id_seq OWNED BY public.books_book_favourites.id;
          public          postgres    false    225            �            1259    16596    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public          postgres    false    222            w           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;
          public          postgres    false    221            �            1259    16620    books_comment    TABLE     1  CREATE TABLE public.books_comment (
    id integer NOT NULL,
    body text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    book_id integer NOT NULL,
    rating double precision NOT NULL,
    name character varying(80) NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.books_comment;
       public         heap    postgres    false            �            1259    16618    books_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.books_comment_id_seq;
       public          postgres    false    224            x           0    0    books_comment_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.books_comment_id_seq OWNED BY public.books_comment.id;
          public          postgres    false    223            �            1259    16522    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16520    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            y           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    16408    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16406    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            z           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    16397    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16395    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            {           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    16553    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16565    traveller_blog    TABLE     �   CREATE TABLE public.traveller_blog (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    img character varying(100) NOT NULL,
    date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.traveller_blog;
       public         heap    postgres    false            �            1259    16563    traveller_blog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.traveller_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.traveller_blog_id_seq;
       public          postgres    false    220            |           0    0    traveller_blog_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.traveller_blog_id_seq OWNED BY public.traveller_blog.id;
          public          postgres    false    219            x           2604    16429    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            y           2604    16439    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            w           2604    16421    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            z           2604    16447    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            {           2604    16457    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            |           2604    16465    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16601    books_book id    DEFAULT     n   ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books_book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16754    books_book_favourites id    DEFAULT     �   ALTER TABLE ONLY public.books_book_favourites ALTER COLUMN id SET DEFAULT nextval('public.books_book_favourites_id_seq'::regclass);
 G   ALTER TABLE public.books_book_favourites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16623    books_comment id    DEFAULT     t   ALTER TABLE ONLY public.books_comment ALTER COLUMN id SET DEFAULT nextval('public.books_comment_id_seq'::regclass);
 ?   ALTER TABLE public.books_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            }           2604    16525    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            v           2604    16411    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            u           2604    16400    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201                       2604    16568    traveller_blog id    DEFAULT     v   ALTER TABLE ONLY public.traveller_blog ALTER COLUMN id SET DEFAULT nextval('public.traveller_blog_id_seq'::regclass);
 @   ALTER TABLE public.traveller_blog ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            V          0    16426 
   auth_group 
   TABLE DATA                 public          postgres    false    207   ��       X          0    16436    auth_group_permissions 
   TABLE DATA                 public          postgres    false    209   ��       T          0    16418    auth_permission 
   TABLE DATA                 public          postgres    false    205   گ       Z          0    16444 	   auth_user 
   TABLE DATA                 public          postgres    false    211   t�       \          0    16454    auth_user_groups 
   TABLE DATA                 public          postgres    false    213   ϳ       ^          0    16462    auth_user_user_permissions 
   TABLE DATA                 public          postgres    false    215   �       e          0    16598 
   books_book 
   TABLE DATA                 public          postgres    false    222   �       i          0    16751    books_book_favourites 
   TABLE DATA                 public          postgres    false    226   k�       g          0    16620    books_comment 
   TABLE DATA                 public          postgres    false    224   ��       `          0    16522    django_admin_log 
   TABLE DATA                 public          postgres    false    217   w�       R          0    16408    django_content_type 
   TABLE DATA                 public          postgres    false    203   r�       P          0    16397    django_migrations 
   TABLE DATA                 public          postgres    false    201   q�       a          0    16553    django_session 
   TABLE DATA                 public          postgres    false    218   ��       c          0    16565    traveller_blog 
   TABLE DATA                 public          postgres    false    220   [�       }           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            ~           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    204            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          postgres    false    210            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            �           0    0    books_book_favourites_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.books_book_favourites_id_seq', 9, true);
          public          postgres    false    225            �           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 7, true);
          public          postgres    false    221            �           0    0    books_comment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.books_comment_id_seq', 34, true);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 62, true);
          public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);
          public          postgres    false    200            �           0    0    traveller_blog_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.traveller_blog_id_seq', 3, true);
          public          postgres    false    219            �           2606    16551    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    16478 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    16441 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    16431    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    16469 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    16423 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    16459 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            �           2606    16493 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            �           2606    16449    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            �           2606    16467 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            �           2606    16507 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            �           2606    16545     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            �           2606    16758 I   books_book_favourites books_book_favourites_book_id_user_id_f0b6a17c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.books_book_favourites
    ADD CONSTRAINT books_book_favourites_book_id_user_id_f0b6a17c_uniq UNIQUE (book_id, user_id);
 s   ALTER TABLE ONLY public.books_book_favourites DROP CONSTRAINT books_book_favourites_book_id_user_id_f0b6a17c_uniq;
       public            postgres    false    226    226            �           2606    16756 0   books_book_favourites books_book_favourites_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.books_book_favourites
    ADD CONSTRAINT books_book_favourites_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.books_book_favourites DROP CONSTRAINT books_book_favourites_pkey;
       public            postgres    false    226            �           2606    16606    books_book books_book_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.books_book DROP CONSTRAINT books_book_pkey;
       public            postgres    false    222            �           2606    16628     books_comment books_comment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.books_comment
    ADD CONSTRAINT books_comment_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.books_comment DROP CONSTRAINT books_comment_pkey;
       public            postgres    false    224            �           2606    16531 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    16415 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    16413 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    16405 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    16560 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            �           2606    16573 "   traveller_blog traveller_blog_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.traveller_blog
    ADD CONSTRAINT traveller_blog_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.traveller_blog DROP CONSTRAINT traveller_blog_pkey;
       public            postgres    false    220            �           1259    16552    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    16489 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    16490 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    16475 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    16505 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            �           1259    16504 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            �           1259    16519 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            �           1259    16518 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            �           1259    16546     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            �           1259    16769 &   books_book_favourites_book_id_2546401e    INDEX     k   CREATE INDEX books_book_favourites_book_id_2546401e ON public.books_book_favourites USING btree (book_id);
 :   DROP INDEX public.books_book_favourites_book_id_2546401e;
       public            postgres    false    226            �           1259    16770 &   books_book_favourites_user_id_15b389ac    INDEX     k   CREATE INDEX books_book_favourites_user_id_15b389ac ON public.books_book_favourites USING btree (user_id);
 :   DROP INDEX public.books_book_favourites_user_id_15b389ac;
       public            postgres    false    226            �           1259    16634    books_comment_book_id_ac8af439    INDEX     [   CREATE INDEX books_comment_book_id_ac8af439 ON public.books_comment USING btree (book_id);
 2   DROP INDEX public.books_comment_book_id_ac8af439;
       public            postgres    false    224            �           1259    16777    books_comment_user_id_72935702    INDEX     [   CREATE INDEX books_comment_user_id_72935702 ON public.books_comment USING btree (user_id);
 2   DROP INDEX public.books_comment_user_id_72935702;
       public            postgres    false    224            �           1259    16542 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    16543 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    16562 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            �           1259    16561 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            �           2606    16484 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    205    2957            �           2606    16479 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2962    207            �           2606    16470 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    203    2952            �           2606    16499 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    213    207    2962            �           2606    16494 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    2970    213            �           2606    16513 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    2957    205            �           2606    16508 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    211    2970            �           2606    16759 M   books_book_favourites books_book_favourites_book_id_2546401e_fk_books_book_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_book_favourites
    ADD CONSTRAINT books_book_favourites_book_id_2546401e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.books_book_favourites DROP CONSTRAINT books_book_favourites_book_id_2546401e_fk_books_book_id;
       public          postgres    false    2997    222    226            �           2606    16764 L   books_book_favourites books_book_favourites_user_id_15b389ac_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_book_favourites
    ADD CONSTRAINT books_book_favourites_user_id_15b389ac_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.books_book_favourites DROP CONSTRAINT books_book_favourites_user_id_15b389ac_fk_auth_user_id;
       public          postgres    false    2970    211    226            �           2606    16629 =   books_comment books_comment_book_id_ac8af439_fk_books_book_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_comment
    ADD CONSTRAINT books_comment_book_id_ac8af439_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.books_comment DROP CONSTRAINT books_comment_book_id_ac8af439_fk_books_book_id;
       public          postgres    false    2997    222    224            �           2606    16772 <   books_comment books_comment_user_id_72935702_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.books_comment
    ADD CONSTRAINT books_comment_user_id_72935702_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.books_comment DROP CONSTRAINT books_comment_user_id_72935702_fk_auth_user_id;
       public          postgres    false    211    224    2970            �           2606    16532 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    2952    217            �           2606    16537 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2970    217    211            V   
   x���          X   
   x���          T   �  x���Mk�@��ޒB(����)�%�&�5����%!�-��]�f��������g��ʫǧ��f����4�uYl>��������8��2���|x2��;s�5�L�ݚuY�n��i�_��/���kc�6oy���'�9!skK�	�� fF�������,E���V]���1E�f�(���8�L���\�q
�<`M��Axɒ����'5�ɣ�L�B���#����_0�_�>v���wm}l�Q��s"�ɼ�IQC�T��Y
bg<[��X!r�=l��)���̓�'�.e��0t<�Y2�G����6uչOӽ7ֹ3J��~���V�,���ءZ.���b�h���>o��=s��I"�:P��;H��4�Ң�$�SY�~����E���oV���k �Z�������_� �����\R�U�	��\�g¥D!W�P}��9�<��Z��E�z����P��G4F��7�3��Vk���,� ��47?�yUk��ʋ/Q�[���Ql���_��mS��� Otx��DUU���w
�Vݦ��]�E�)����ۭͻ����Ŏ&�/��$Kc��9)S��,�N�>^L�W�6����
F��j=�o(0[5����-�O����`�0y4x      Z   K  x���]O�P�{?Ź`�V��
zZ[�$QC����������/�Z�usv.������t�kX@ӭ�*/�}ɭ�h^A��p�5����[/B</"3Y�H�
l6�N�i/�HP���.��F>�Aug���zE�NJ,�S]�s��7�b$B$"���JJ��Q�2NY�	ݤꨵ��'���U�TFn�b���r�Ɖ����2���E`̙�1�He�������_ah��ߎ��P����b����IiTȩ�.!�����S���ddILK��C���䖢0vv8r��`p�Y{�_@�7�る	�rJ��D��	����      \   
   x���          ^   
   x���          e   X  x��V�r�6��+�r٤Jڬ,ے�Cʶ��HVYr��!9\�4 .���D���|Iz@n$ǩ�sЊ$�yt�4xy}{��.���R?��T���M,��~}����[���-�Z�s�Ԓo�qtk�f��^`�g���^�s����`������N_���c�|�Z�WG����>�4�J�R�wĔ� �;J-'J�Jo����˭��Gg'�����[��J��G�ɵj�(U�ĈƮ�Ƹ:⩓�>���;!7T��J/Ik�lu�[��=�n�3��ɸ����7(�c���`$g{������n+[�#kt�|I/�D���K-�Sղ[c}l�C�Ś�ݠ5vw1IG��l9	PyN��ʰ�X�!�RK�*E
\����� d�J43׼X I��qP��z�Q�U **�&sL�	�dJ��j�q�M�&��A\ZBJ�7Irٵ�f��4��M~����._Wޥ 2(�f4VO�O��wf��!ߗ���D�~�0�F� <P�>(�)���e�_�"���x������k,a�*��t_��R�C:������ΣdT�q ��C��iC�HǢ����&~�DE���7EF����a�b�e��t��������_�5~�ow��~|t�U�p<��v��^���w`�۾�ZW8:�w�sS%Y�T�Y
y�Bj���>�P�*��D��Yب�`,r��֏�iLRVak��E��0�(J'�L�K3�Y%��<��X��}�f!���}�*�Q�=m�����AG�`��o�{�@����c^Ȇ�e;LS[O������45��٭az�NnP�Z�g�9K��_Cw\8�IP�A�W���d+�VE��`v{+���D(��j9t�B��}H�ҁf���Z`.�6MP1M8F=9O��c����a>,w�^'N�+4���̡�0 ����;=��R5�9��wC���~���n`�y��|�CL[��LC�t���VA����Zӈ"0y��#�X��j�kN{VO�2Ok��U�`P�m �������8YM���W���EE�*9��@� %e�rj�����,yehV��N���n�O�-�2�����zH�Pz�L�Y1k�gu���ӹ�P���o�[�(�ß�h�]��O_��8�����Eџ�;}s{�/��_��Fv��T~���`ו�K���k��7qW����N��
]e{��-��Rm��/W8/S������35��O��ט��;lh�e,1�j�����lt8#��z�*pP�~1�Yt^'1���� ,>(�����N�q�ӫ�n�9�s��>��>����,���W窣b������#9>=�y�jN���ʕTg�Ӳ>ayV�cu���=�0�=[%�ѣ� �2�P      i   B   x���v
Q���W((M��L�K���.���i�e��E�%��
a�>���
�:
�:
&��\\\ ���      g   �   x�����@D{��vj�w"kEA�`hk 7J� ��^k-,gr&s�4������}�nM�W�^�ڶ��8D�}��T&�ޔ�L(s��c� �Z������)-1C?h����KG�VN����aԖ��;�㩱�$ j�
|�\�oN|f�TIp�7�_B�      `   �  x�͙�n�F���ߤE���왽��)ܦ���E�DKL$Ѡ�j�w�%+R�d� m��ۙٙF�g'�.����Kvs{5�{��.���i�Oގ����N.�O��=D���X
:6і;m=�_�N�~H��py�,��e�����n��_<J�������>���?���tlr�D(4�Wlp`����L­p���C68d��d ��@�X#�~)��[�E��k 6A�Hɝ�hp#ރ����(G�y6�O���GO�*e�M���hbDI_l�#JTX���[�����cA/@�%Zr�= �l����I�N+�OY:a�8�7��uޫ��O�]6���2K+���i�cWaU��f���{u{�M�뷂�o�ն�h	w^Xi���x/�?o!�#�Y:��S�'��A\��R�t�+/��9�����Y6eOG�4��aƞ��d/�ٳ����ư���u>��Dexf��4ц����Z*	���*+oʌ���%@��&`��҉�$�06�O$r���n��gY/�����"�T��L�!+Y>N��#���Sz�0��8C������j�D	���.r�Z��e�!+��i�M�E>zW�n�O7�t�ȥh\��m�L�
R+*!B	���^�>U�V��Ih�0�N4���кU�
9x�����{/^/4-�I�2�ǈ8�W��Xi���xX���^C0��Q=yTE�n~9OoG������6�`�P����&�ø�YH;���P�E�,\�*�n�I�mE���*��uk�fi�US���t�K�L$`��J[/���!P�4�z��z\;
��ֆ˟��?ͪd�Vβ;v>����Z��q��e�i���T9<��j���)u��E��~�B)uܵ���5I�-��I�dӊ=�l��:�öD�-���~�{���hD f�,�ެ%�����X*�B��$���1����Oj�M�"pa�n��A��}�ˋQoOy�j����Z~�q9�en��A���Y�	%���`,z�i���ma� 0~[�<�ʻ"k�j�^��J�����E~U��l�a��V�hύ�K�V��Q�Ԓ*)"aHZ3��,�O��
��Se�b��: ʧ��W����EU� ��]I}�
 �w�_V��b�}�RO���S���M��Y=ί �	B$@{Gjy��'�Y:H��FU|2Nsw�~I:t���pv���nI��ʅT�6��$55I���4z��kp#ne�����F�8I��� �Q���u���m�i)�M�:�ی�a�~��iq2u��C^Pa^G���O���;�䟧��2����l�Dk��)>�pK���苖
^�-9$49���MhP�h�t��A2$�D�U\+�q~XjH�_)�f�c�16�oz�=�]"1N�����2R�vR|�@�[r,I����˴�ߴC0KY�0���^D�f� ��Oh���к�?�YK+1��I�\��۵�<�dĪ      R   �   x���K��  �{���1ַ���C��&��jh��]
�&�{�Z;�`��2 ��7?�n;��L�|P�RY�s��cҝ�M3rZ7{��I��gB0C�	UƽU�vsF�J��Ko �ጽS��g43��+��&TUk�1��B�3Hm7����c�8���-�����Y��_s�~�n,C�!�d�`?�$�O�"�~V���+Dp���\U�8��1�q��_�$d�}��(�KG�      P   ?  x���Oo�6����e�6��!ER=��� ��n{%[��V�\J6߾��M,������o��>���Sq���o�n�е�r�5l7���MS;l���_~������Tܮ���l��i׌�r ��m;��K�w�w���S�
��~]+}���7��J�a?}�洼��0N�u�n����2��2ijA#�)n|��������Kx����x���+^�>����s6~�ehW�?+�eT��꼫������oCߜWaK4 .�ffn3򡛚�wM��qL�Hh߇o�k��Ë�T(�rUع
>�؏ri��v� G�{��|u�O�������3�s�>�wa��A[ى}w�@� �9W �T����m|1�A}��E�E����"�̱ ��k�a��|2����f��ҡ��$:����J�Y'|ߌJ��r��\�{�kU(F��J=S�pT���~w��Qg۲�+@�߉��÷�����Un(�<�N��s��̈́�se�p�ׅ~�?۲b�Li8���t]�%:%�m�g��$�|��P� {��:���T�� �ZS�]�Hgt���a�I ��GVjF��V�P(�UȹyBzAf���J*�b{����I� Y�X�\Q��*i'}/��C)����%U�41�{N�,p���(ִ^����mA(�Z뒵�M��\����x�3�+��'S�5�s3�܂lސ�]��ڀ5�Ґ�&w��}C��,YAI�^f\p����üx�̚��j�"0�%v�C�i�#�w�6�e1���E`H�;)��#D5��ɕUR�2�94�MV2�T75���!�F.�B����9�^�      a   �  x���Ɏ����}���D	%vC�ll�����	2}�nڧ�Ͻ�n*J��f����b�ۃ��/�����{7O�O?}�Q�tA�%U�aK�U�>��q,)���b��4���yqEz���?>��d��j��t:�
��k���\J+�c-7�ˢv�s��'
	(�!c���֕�7���9ZRa��1C�ˬ�����|��B3�u��B��1��'�C�=�x?'Ja���ub����!�q^=��[�a5b����0���̝*�,�.�L�bk	�w��t��[)�3)��(ܼ�7�����4 ��"�"�~"�	��fD����?~����Q�x<۵#<���_�]�����)�����5���%�7y�ʬbKtV�����u�x�1(W!��Q�/�Ӻ�,���
�������<�j���/�;1�����-ɻ[ҝu�*%����)�Շ��ruf�S��*��Ֆ&W�blQ�lw� ��I� W��Ը�+>q�i��!OO��L��9�^K�����hE

@��c�i�[�]�-��z~͗Л�� "U��f��*o��Mk
+�ZS�%΃��WRw�斮����n���Ҏ���p�M�ﭺ������M�W�ojD� `�G�,m̜u�ˀ S����8��WDݫ'i�L}��k���:_y���vwZB������ւ�2�����;���jE��ω` ��]��s��L�)+��MU���$'���оS�DD���4�a�[���5����Mn��eú�b&�C��Mm�q��;�덽�6��ȚT!zaH��j��^2����y�Z��EFx�~�G�-ZA(���J<���lHQ^�U6�%Lk��ei��%��E@]|��EfM�@sE�����p�]o���Z��"�D>1���R;�Y�0�_s��I��=�!�r� l����iSi/�ux4�Ճ�<�uW�F�Y��q�Y�H!��A�0Ӭ�����
���%���HHƃ�=�NЦ&y-�C�9-���M�](����b��x���(��>E�l�+@��6Z2{Z��&�ѩ�Կ�i�P��(f�l�ȴn�ZT��d�^꣰o�>_����
_���w�r"�E |�P@�{�!��D<!�/�"A'��EQ�V����v1�+�L�ՠrv�ų��x���[����Jǔ��
�6㗮e? iVD�!�o��~�'���`�a���/�f�$!���1�V�Uz�1��EqMmr%��ܫ��� d�=���X��/�?��9]<�=��ܳ�����OhW�F!�����=�t��d�y�%˜;z�>�V���/R�Đ}��PS6�3��Y|N�<�����5o�[g��s���2?��TwX����Vt�R�1^g�)�^��ޡ��^䍛r5��|�� b���.S���_��~ň3�v��Vܛ�򢕼�E{mCQ
�Z���	Y��R�]�ݴ��Yq�,ϳ�{��Jb<U�{͇t�3��򈫉z��m�������O�����")��vʵg>������:s|��E�{#;���i_�0�{�l�g���e>�n����"����?қ"'�K�7p�W��S��֛q��u'�|�'e�H��u=�@�*;��b)��4J��,_F��ޫa_˂l<!:�SN楛��r�Vn}^����%��S����,�4�0���&^V��87�¦�n�Eܘ��Ї��H�>n�N.�+�6KW�(��8�xg��Z� �">��~�K�7S�0���5��l0˾�Bh�Uک[1�H����Nm�R�:��Ա��a��!���k���~��" �H |/�Řr/<����o+�Eò�ʾ�a�_�v�u[�磺�w㞿��"Kc깪W�Z3Q�dĔ��k��Т�.�wӾ���I��o�NY��      c   �  x��RQo�@~��[A���tቇITCb�W�k�.�yN�k3����u��	�����lv6�w�߶���~�����=^��?���~|��~}G��oi��=���>Ԟ�O�z�V�d�_��c!��98(�@�K�8�cJ. C]Sp.&�r���c�"�c&�<̬r����l�E�,�EqQ�/�+���b]Wo�U�~5}�q�y1�R}nD,�<j�Ľg#�D�����"�AI�!b�a u]ʚ%�SlоZ�U���3��g�0�X-GVW���X-�ꆓb%��"�{
m�+��o����U4�m	+sR�s
8XY�$���rBb�x)���T��Y�x{7��{=�byL��J�
	Wr��4�X<C*�# ��5��y��\6���\~8�r2����     