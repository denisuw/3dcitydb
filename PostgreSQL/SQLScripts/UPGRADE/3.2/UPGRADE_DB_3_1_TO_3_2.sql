-- 3D City Database - The Open Source CityGML Database
-- http://www.3dcitydb.org/
-- 
-- Copyright 2013 - 2016
-- Chair of Geoinformatics
-- Technical University of Munich, Germany
-- https://www.gis.bgu.tum.de/
-- 
-- The 3D City Database is jointly developed with the following
-- cooperation partners:
-- 
-- virtualcitySYSTEMS GmbH, Berlin <http://www.virtualcitysystems.de/>
-- M.O.S.S. Computer Grafik Systeme GmbH, Taufkirchen <http://www.moss.de/>
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- 
--     http://www.apache.org/licenses/LICENSE-2.0
--     
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-------------------------------------------------------------------------------
-- About:
-- Upgrade script from version 3.1 to 3.2 of the 3D City Database
--
-------------------------------------------------------------------------------
--
-- ChangeLog:
--
-- Version | Date       | Description                               | Author
-- 1.0.1     2016-03-24   release version                             ZYao
-- 1.0.0     2015-11-05   release version                             FKun
--

SET client_min_messages TO WARNING;

\echo 'Starting 3D City Database upgrade...'
\set ON_ERROR_STOP ON
\echo

--// drop old versions of CITYDB_PKG
DROP SCHEMA CITYDB_PKG CASCADE;

--// create CITYDB_PKG
\echo
\echo 'Upgrading CITYDB_PKG schema...'
CREATE SCHEMA CITYDB_PKG;

--// call PL/pgSQL-Scripts to add CITYDB_PKG functions
\i ../../PL_pgSQL/CITYDB_PKG/UTIL/UTIL.sql
\i ../../PL_pgSQL/CITYDB_PKG/INDEX/IDX.sql
\i ../../PL_pgSQL/CITYDB_PKG/SRS/SRS.sql
\i ../../PL_pgSQL/CITYDB_PKG/STATISTICS/STAT.sql
\i ../../PL_pgSQL/CITYDB_PKG/ENVELOPE/ENVELOPE.sql
\i ../../PL_pgSQL/CITYDB_PKG/DELETE/DELETE.sql
\i ../../PL_pgSQL/CITYDB_PKG/DELETE/DELETE_BY_LINEAGE.sql

\echo
\echo '3D City Database upgrade complete!'
