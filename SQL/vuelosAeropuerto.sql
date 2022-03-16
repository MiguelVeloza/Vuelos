/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     15/03/2022 22:53:40                          */
/*==============================================================*/


/*==============================================================*/
/* Table: ACCION                                                */
/*==============================================================*/
create table ACCION (
   IDACCION             VARCHAR(2)           not null,
   DESCACCION           VARCHAR(10)          null,
   constraint PK_ACCION primary key (IDACCION)
);

/*==============================================================*/
/* Index: ACCION_PK                                             */
/*==============================================================*/
create unique index ACCION_PK on ACCION (
IDACCION
);

/*==============================================================*/
/* Table: DIA                                                   */
/*==============================================================*/
create table DIA (
   IDDIA                VARCHAR(1)           not null,
   ANOMDIA              VARCHAR(12)          null,
   constraint PK_DIA primary key (IDDIA)
);

/*==============================================================*/
/* Index: DIA_PK                                                */
/*==============================================================*/
create unique index DIA_PK on DIA (
IDDIA
);

/*==============================================================*/
/* Table: DIAPROGRAMA                                           */
/*==============================================================*/
create table DIAPROGRAMA (
   IDPROGRAMA           NUMERIC(5,0)         not null,
   IDDIA                VARCHAR(1)           not null,
   constraint PK_DIAPROGRAMA primary key (IDPROGRAMA, IDDIA)
);

/*==============================================================*/
/* Index: DIAPROGRAMA_PK                                        */
/*==============================================================*/
create unique index DIAPROGRAMA_PK on DIAPROGRAMA (
IDPROGRAMA,
IDDIA
);

/*==============================================================*/
/* Index: DIAPROGRAMA_FK                                        */
/*==============================================================*/
create  index DIAPROGRAMA_FK on DIAPROGRAMA (
IDPROGRAMA
);

/*==============================================================*/
/* Index: DIAPROGRAMA2_FK                                       */
/*==============================================================*/
create  index DIAPROGRAMA2_FK on DIAPROGRAMA (
IDDIA
);

/*==============================================================*/
/* Table: ESCALA                                                */
/*==============================================================*/
create table ESCALA (
   IDPROGRAMA           NUMERIC(5,0)         not null,
   CONSCEC              NUMERIC(2,0)         not null,
   IDLUGAR              VARCHAR(5)           not null,
   IDTIPOESCALA         VARCHAR(1)           not null,
   constraint PK_ESCALA primary key (CONSCEC, IDPROGRAMA)
);

/*==============================================================*/
/* Index: ESCALA_PK                                             */
/*==============================================================*/
create unique index ESCALA_PK on ESCALA (
CONSCEC,
IDPROGRAMA
);

/*==============================================================*/
/* Index: ESCALALUGAR_FK                                        */
/*==============================================================*/
create  index ESCALALUGAR_FK on ESCALA (
IDLUGAR
);

/*==============================================================*/
/* Index: ESCALAPROGRAMA_FK                                     */
/*==============================================================*/
create  index ESCALAPROGRAMA_FK on ESCALA (
IDPROGRAMA
);

/*==============================================================*/
/* Index: TIPOESCALAESCALA_FK                                   */
/*==============================================================*/
create  index TIPOESCALAESCALA_FK on ESCALA (
IDTIPOESCALA
);

/*==============================================================*/
/* Table: EVENTOPISTA                                           */
/*==============================================================*/
create table EVENTOPISTA (
   IDVUELO              VARCHAR(6)           not null,
   CONSCECEVENTO        NUMERIC(4,0)         not null,
   IDLUGAR              VARCHAR(5)           not null,
   NUMPISTA             NUMERIC(2,0)         not null,
   IDTIPOEVENTO         VARCHAR(1)           null,
   FECHAEVENTO          DATE                 null,
   HORAEVENTO           TIME                 null,
   constraint PK_EVENTOPISTA primary key (CONSCECEVENTO, IDVUELO)
);

/*==============================================================*/
/* Index: EVENTOPISTA_PK                                        */
/*==============================================================*/
create unique index EVENTOPISTA_PK on EVENTOPISTA (
CONSCECEVENTO,
IDVUELO
);

/*==============================================================*/
/* Index: EVENTOPISTAPISTA_FK                                   */
/*==============================================================*/
create  index EVENTOPISTAPISTA_FK on EVENTOPISTA (
NUMPISTA,
IDLUGAR
);

/*==============================================================*/
/* Index: EVENTOPISTATIPOEVENTO_FK                              */
/*==============================================================*/
create  index EVENTOPISTATIPOEVENTO_FK on EVENTOPISTA (
IDTIPOEVENTO
);

/*==============================================================*/
/* Index: EVENTOPISTAVUELO_FK                                   */
/*==============================================================*/
create  index EVENTOPISTAVUELO_FK on EVENTOPISTA (
IDVUELO
);

/*==============================================================*/
/* Table: LINEAAEREA                                            */
/*==============================================================*/
create table LINEAAEREA (
   CODLINEA             VARCHAR(3)           not null,
   NOMBRELINEA          VARCHAR(30)          null,
   constraint PK_LINEAAEREA primary key (CODLINEA)
);

/*==============================================================*/
/* Index: LINEAAEREA_PK                                         */
/*==============================================================*/
create unique index LINEAAEREA_PK on LINEAAEREA (
CODLINEA
);

/*==============================================================*/
/* Table: LUGAR                                                 */
/*==============================================================*/
create table LUGAR (
   IDLUGAR              VARCHAR(5)           not null,
   IDTIPOLUGAR          VARCHAR(3)           not null,
   LUG_IDLUGAR          VARCHAR(5)           null,
   NOMLUGAR             VARCHAR(30)          null,
   constraint PK_LUGAR primary key (IDLUGAR)
);

/*==============================================================*/
/* Index: LUGAR_PK                                              */
/*==============================================================*/
create unique index LUGAR_PK on LUGAR (
IDLUGAR
);

/*==============================================================*/
/* Index: LUGARLUGARSUP_FK                                      */
/*==============================================================*/
create  index LUGARLUGARSUP_FK on LUGAR (
LUG_IDLUGAR
);

/*==============================================================*/
/* Index: TIPOLUGARLUGAR_FK                                     */
/*==============================================================*/
create  index TIPOLUGARLUGAR_FK on LUGAR (
IDTIPOLUGAR
);

/*==============================================================*/
/* Table: MODELOAVION                                           */
/*==============================================================*/
create table MODELOAVION (
   IDMODELO             VARCHAR(3)           not null,
   CAPIDAD              NUMERIC(5,0)         null,
   constraint PK_MODELOAVION primary key (IDMODELO)
);

/*==============================================================*/
/* Index: MODELOAVION_PK                                        */
/*==============================================================*/
create unique index MODELOAVION_PK on MODELOAVION (
IDMODELO
);

/*==============================================================*/
/* Table: OCUPACION                                             */
/*==============================================================*/
create table OCUPACION (
   CONSCOCUPA           NUMERIC(5)           not null,
   IDVUELO              VARCHAR(6)           not null,
   IDSILLA              VARCHAR(4)           not null,
   IDPASAJERO           VARCHAR(15)          not null,
   IDACCION             VARCHAR(2)           not null,
   CONSCEC              NUMERIC(2,0)         not null,
   IDPROGRAMA           NUMERIC(5,0)         not null,
   constraint PK_OCUPACION primary key (CONSCOCUPA)
);

/*==============================================================*/
/* Index: OCUPACION_PK                                          */
/*==============================================================*/
create unique index OCUPACION_PK on OCUPACION (
CONSCOCUPA
);

/*==============================================================*/
/* Index: ESCALAOCUPACION_FK                                    */
/*==============================================================*/
create  index ESCALAOCUPACION_FK on OCUPACION (
CONSCEC,
IDPROGRAMA
);

/*==============================================================*/
/* Index: OCUPACIONACCION_FK                                    */
/*==============================================================*/
create  index OCUPACIONACCION_FK on OCUPACION (
IDACCION
);

/*==============================================================*/
/* Index: OCUPACIONPASAJERO_FK                                  */
/*==============================================================*/
create  index OCUPACIONPASAJERO_FK on OCUPACION (
IDPASAJERO
);

/*==============================================================*/
/* Index: SILLAOCUPACION_FK                                     */
/*==============================================================*/
create  index SILLAOCUPACION_FK on OCUPACION (
IDSILLA
);

/*==============================================================*/
/* Index: VUELOOCUPACION_FK                                     */
/*==============================================================*/
create  index VUELOOCUPACION_FK on OCUPACION (
IDVUELO
);

/*==============================================================*/
/* Table: PASAJERO                                              */
/*==============================================================*/
create table PASAJERO (
   IDPASAJERO           VARCHAR(15)          not null,
   IDLUGAR              VARCHAR(5)           not null,
   NOMBRE               VARCHAR(20)          null,
   APELLIDO             VARCHAR(20)          null,
   FECHANACIMIENTO      DATE                 null,
   constraint PK_PASAJERO primary key (IDPASAJERO)
);

/*==============================================================*/
/* Index: PASAJERO_PK                                           */
/*==============================================================*/
create unique index PASAJERO_PK on PASAJERO (
IDPASAJERO
);

/*==============================================================*/
/* Index: LUGARPASAJERO_FK                                      */
/*==============================================================*/
create  index LUGARPASAJERO_FK on PASAJERO (
IDLUGAR
);

/*==============================================================*/
/* Table: PISTA                                                 */
/*==============================================================*/
create table PISTA (
   NUMPISTA             NUMERIC(2,0)         not null,
   IDLUGAR              VARCHAR(5)           not null,
   constraint PK_PISTA primary key (NUMPISTA, IDLUGAR)
);

/*==============================================================*/
/* Index: PISTA_PK                                              */
/*==============================================================*/
create unique index PISTA_PK on PISTA (
NUMPISTA,
IDLUGAR
);

/*==============================================================*/
/* Index: PISTALUGAR_FK                                         */
/*==============================================================*/
create  index PISTALUGAR_FK on PISTA (
IDLUGAR
);

/*==============================================================*/
/* Table: PROGRAMAVUELO                                         */
/*==============================================================*/
create table PROGRAMAVUELO (
   IDPROGRAMA           NUMERIC(5,0)         not null,
   IDLUGAR              VARCHAR(5)           not null,
   LUG_IDLUGAR          VARCHAR(5)           not null,
   LUG_IDLUGAR2         VARCHAR(5)           not null,
   CODLINEA             VARCHAR(3)           not null,
   constraint PK_PROGRAMAVUELO primary key (IDPROGRAMA)
);

/*==============================================================*/
/* Index: PROGRAMAVUELO_PK                                      */
/*==============================================================*/
create unique index PROGRAMAVUELO_PK on PROGRAMAVUELO (
IDPROGRAMA
);

/*==============================================================*/
/* Index: AEROPUERTOPROGRAMAVUELO_FK                            */
/*==============================================================*/
create  index AEROPUERTOPROGRAMAVUELO_FK on PROGRAMAVUELO (
LUG_IDLUGAR2
);

/*==============================================================*/
/* Index: DESTINOPROGRAMAVUELO_FK                               */
/*==============================================================*/
create  index DESTINOPROGRAMAVUELO_FK on PROGRAMAVUELO (
LUG_IDLUGAR
);

/*==============================================================*/
/* Index: ORIGENPROGRAMAVUELO_FK                                */
/*==============================================================*/
create  index ORIGENPROGRAMAVUELO_FK on PROGRAMAVUELO (
IDLUGAR
);

/*==============================================================*/
/* Index: PROGRAMALINEA_FK                                      */
/*==============================================================*/
create  index PROGRAMALINEA_FK on PROGRAMAVUELO (
CODLINEA
);

/*==============================================================*/
/* Table: SILLA                                                 */
/*==============================================================*/
create table SILLA (
   IDSILLA              VARCHAR(4)           not null,
   IDMODELO             VARCHAR(3)           not null,
   constraint PK_SILLA primary key (IDSILLA)
);

/*==============================================================*/
/* Index: SILLA_PK                                              */
/*==============================================================*/
create unique index SILLA_PK on SILLA (
IDSILLA
);

/*==============================================================*/
/* Index: MODELOSILLA_FK                                        */
/*==============================================================*/
create  index MODELOSILLA_FK on SILLA (
IDMODELO
);

/*==============================================================*/
/* Table: TIPOESCALA                                            */
/*==============================================================*/
create table TIPOESCALA (
   IDTIPOESCALA         VARCHAR(1)           not null,
   DESCTIPOESCALA       VARCHAR(20)          null,
   constraint PK_TIPOESCALA primary key (IDTIPOESCALA)
);

/*==============================================================*/
/* Index: TIPOESCALA_PK                                         */
/*==============================================================*/
create unique index TIPOESCALA_PK on TIPOESCALA (
IDTIPOESCALA
);

/*==============================================================*/
/* Table: TIPOEVENTO                                            */
/*==============================================================*/
create table TIPOEVENTO (
   IDTIPOEVENTO         VARCHAR(1)           not null,
   DESCTIPOEVENTO       VARCHAR(10)          null,
   constraint PK_TIPOEVENTO primary key (IDTIPOEVENTO)
);

/*==============================================================*/
/* Index: TIPOEVENTO_PK                                         */
/*==============================================================*/
create unique index TIPOEVENTO_PK on TIPOEVENTO (
IDTIPOEVENTO
);

/*==============================================================*/
/* Table: TIPOLUGAR                                             */
/*==============================================================*/
create table TIPOLUGAR (
   IDTIPOLUGAR          VARCHAR(3)           not null,
   DESCTIPOLUGAR        VARCHAR(30)          null,
   constraint PK_TIPOLUGAR primary key (IDTIPOLUGAR)
);

/*==============================================================*/
/* Index: TIPOLUGAR_PK                                          */
/*==============================================================*/
create unique index TIPOLUGAR_PK on TIPOLUGAR (
IDTIPOLUGAR
);

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO (
   IDVUELO              VARCHAR(6)           not null,
   IDMODELO             VARCHAR(3)           not null,
   IDPROGRAMA           NUMERIC(5,0)         not null,
   FECHA                DATE                 null,
   PLAZASVACIAS         NUMERIC(3)           null,
   constraint PK_VUELO primary key (IDVUELO)
);

/*==============================================================*/
/* Index: VUELO_PK                                              */
/*==============================================================*/
create unique index VUELO_PK on VUELO (
IDVUELO
);

/*==============================================================*/
/* Index: MODELOVUELO_FK                                        */
/*==============================================================*/
create  index MODELOVUELO_FK on VUELO (
IDMODELO
);

/*==============================================================*/
/* Index: PROGRAMAVUELOVUELO_FK                                 */
/*==============================================================*/
create  index PROGRAMAVUELOVUELO_FK on VUELO (
IDPROGRAMA
);

alter table DIAPROGRAMA
   add constraint FK_DIAPROGR_DIAPROGRA_PROGRAMA foreign key (IDPROGRAMA)
      references PROGRAMAVUELO (IDPROGRAMA)
      on delete restrict on update restrict;

alter table DIAPROGRAMA
   add constraint FK_DIAPROGR_DIAPROGRA_DIA foreign key (IDDIA)
      references DIA (IDDIA)
      on delete restrict on update restrict;

alter table ESCALA
   add constraint FK_ESCALA_ESCALALUG_LUGAR foreign key (IDLUGAR)
      references LUGAR (IDLUGAR)
      on delete restrict on update restrict;

alter table ESCALA
   add constraint FK_ESCALA_ESCALAPRO_PROGRAMA foreign key (IDPROGRAMA)
      references PROGRAMAVUELO (IDPROGRAMA)
      on delete restrict on update restrict;

alter table ESCALA
   add constraint FK_ESCALA_TIPOESCAL_TIPOESCA foreign key (IDTIPOESCALA)
      references TIPOESCALA (IDTIPOESCALA)
      on delete restrict on update restrict;

alter table EVENTOPISTA
   add constraint FK_EVENTOPI_EVENTOPIS_PISTA foreign key (NUMPISTA, IDLUGAR)
      references PISTA (NUMPISTA, IDLUGAR)
      on delete restrict on update restrict;

alter table EVENTOPISTA
   add constraint FK_EVENTOPI_EVENTOPIS_TIPOEVEN foreign key (IDTIPOEVENTO)
      references TIPOEVENTO (IDTIPOEVENTO)
      on delete restrict on update restrict;

alter table EVENTOPISTA
   add constraint FK_EVENTOPI_EVENTOPIS_VUELO foreign key (IDVUELO)
      references VUELO (IDVUELO)
      on delete restrict on update restrict;

alter table LUGAR
   add constraint FK_LUGAR_LUGARLUGA_LUGAR foreign key (LUG_IDLUGAR)
      references LUGAR (IDLUGAR)
      on delete restrict on update restrict;

alter table LUGAR
   add constraint FK_LUGAR_TIPOLUGAR_TIPOLUGA foreign key (IDTIPOLUGAR)
      references TIPOLUGAR (IDTIPOLUGAR)
      on delete restrict on update restrict;

alter table OCUPACION
   add constraint FK_OCUPACIO_OCUPACION_ACCION foreign key (IDACCION)
      references ACCION (IDACCION)
      on delete restrict on update restrict;

alter table OCUPACION
   add constraint FK_OCUPACIO_OCUPACION_ESCALA foreign key (CONSCEC, IDPROGRAMA)
      references ESCALA (CONSCEC, IDPROGRAMA)
      on delete restrict on update restrict;

alter table OCUPACION
   add constraint FK_OCUPACIO_OCUPACION_PASAJERO foreign key (IDPASAJERO)
      references PASAJERO (IDPASAJERO)
      on delete restrict on update restrict;

alter table OCUPACION
   add constraint FK_OCUPACIO_SILLAOCUP_SILLA foreign key (IDSILLA)
      references SILLA (IDSILLA)
      on delete restrict on update restrict;

alter table OCUPACION
   add constraint FK_OCUPACIO_VUELOOCUP_VUELO foreign key (IDVUELO)
      references VUELO (IDVUELO)
      on delete restrict on update restrict;

alter table PASAJERO
   add constraint FK_PASAJERO_LUGARPASA_LUGAR foreign key (IDLUGAR)
      references LUGAR (IDLUGAR)
      on delete restrict on update restrict;

alter table PISTA
   add constraint FK_PISTA_PISTALUGA_LUGAR foreign key (IDLUGAR)
      references LUGAR (IDLUGAR)
      on delete restrict on update restrict;

alter table PROGRAMAVUELO
   add constraint FK_PROGRAMA_AEROPUERT_LUGAR foreign key (LUG_IDLUGAR2)
      references LUGAR (IDLUGAR)
      on delete restrict on update restrict;

alter table PROGRAMAVUELO
   add constraint FK_PROGRAMA_DESTINOPR_LUGAR foreign key (LUG_IDLUGAR)
      references LUGAR (IDLUGAR)
      on delete restrict on update restrict;

alter table PROGRAMAVUELO
   add constraint FK_PROGRAMA_ORIGENPRO_LUGAR foreign key (IDLUGAR)
      references LUGAR (IDLUGAR)
      on delete restrict on update restrict;

alter table PROGRAMAVUELO
   add constraint FK_PROGRAMA_PROGRAMAL_LINEAAER foreign key (CODLINEA)
      references LINEAAEREA (CODLINEA)
      on delete restrict on update restrict;

alter table SILLA
   add constraint FK_SILLA_MODELOSIL_MODELOAV foreign key (IDMODELO)
      references MODELOAVION (IDMODELO)
      on delete restrict on update restrict;

alter table VUELO
   add constraint FK_VUELO_MODELOVUE_MODELOAV foreign key (IDMODELO)
      references MODELOAVION (IDMODELO)
      on delete restrict on update restrict;

alter table VUELO
   add constraint FK_VUELO_PROGRAMAV_PROGRAMA foreign key (IDPROGRAMA)
      references PROGRAMAVUELO (IDPROGRAMA)
      on delete restrict on update restrict;

