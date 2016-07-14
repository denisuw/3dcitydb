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
-- ChangeLog:
--
-- Version | Date       | Description                               | Author
-- 3.0.0     2013-12-06   new version for 3DCityDB V3                 ZYao
--                                                                    TKol
--                                                                    FKun
--                                                                    CNag
--                                                                    PWil
-- 2.0.0     2012-05-21   PostGIS version                             FKun
--                                                                    TKol	
--                                                                    GKoe
--                                                                    CNag
--                                                                    ASta
--
DELETE FROM citydb.OBJECTCLASS;

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (0,'Undefined',NULL);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (1,'_GML',NULL);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (2,'_Feature',1);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (3,'_CityObject',2);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (4,'LandUse',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (5,'GenericCityObject',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (6,'_VegetationObject',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (7,'SolitaryVegetationObject',6);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (8,'PlantCover',6);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (105,'_WaterObject',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (9,'WaterBody',105);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (10,'_WaterBoundarySurface',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (11,'WaterSurface',10);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (12,'WaterGroundSurface',10);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (13,'WaterClosureSurface',10);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (14,'ReliefFeature',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (15,'_ReliefComponent',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (16,'TINRelief',15);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (17,'MassPointRelief',15);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (18,'BreaklineRelief',15);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (19,'RasterRelief',15);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (20,'_Site',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (21,'CityFurniture',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (22,'_TransportationObject',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (23,'CityObjectGroup',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (24,'_AbstractBuilding',20);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (25,'BuildingPart',24);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (26,'Building',24);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (27,'BuildingInstallation',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (28,'IntBuildingInstallation',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (29,'_BuildingBoundarySurface',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (30,'BuildingCeilingSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (31,'InteriorBuildingWallSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (32,'BuildingFloorSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (33,'BuildingRoofSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (34,'BuildingWallSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (35,'BuildingGroundSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (36,'BuildingClosureSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (37,'_BuildingOpening',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (38,'BuildingWindow',37);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (39,'BuildingDoor',37);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (40,'BuildingFurniture',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (41,'BuildingRoom',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (42,'TransportationComplex',22);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (43,'Track',42);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (44,'Railway',42);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (45,'Road',42);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (46,'Square',42);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (47,'TrafficArea',22);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (48,'AuxiliaryTrafficArea',22);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (49,'FeatureCollection',2);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (50,'Appearance',2);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (51,'_SurfaceData',2);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (52,'_Texture',51);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (53,'X3DMaterial',51);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (54,'ParameterizedTexture',52);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (55,'GeoreferencedTexture',52);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (56,'_TextureParametrization',1);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (57,'CityModel',49);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (58,'Address',2);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (59,'ImplicitGeometry',1);

--// extending the BoudarySurface (OuterCeilingSurface and OuterFloorSurface) of Building for CityGML 2.0

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (60,'OuterBuildingCeilingSurface',29);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (61,'OuterBuildingFloorSurface',29);

--// BRIDGE

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (62,'_AbstractBridge',20);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (63,'BridgePart',62);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (64,'Bridge',62);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (65,'BridgeInstallation',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (66,'IntBridgeInstallation',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (67,'_BridgeBoundarySurface',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (68,'BridgeCeilingSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (69,'InteriorBridgeWallSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (70,'BridgeFloorSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (71,'BridgeRoofSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (72,'BridgeWallSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (73,'BridgeGroundSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (74,'BridgeClosureSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (75,'OuterBridgeCeilingSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (76,'OuterBridgeFloorSurface',67);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (77,'_BridgeOpening',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (78,'BridgeWindow',77);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (79,'BridgeDoor',77);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (80,'BridgeFurniture',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (81,'BridgeRoom',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (82,'BridgeConstructionElement',3);

--// TUNNEL

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (83,'_AbstractTunnel',20);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (84,'TunnelPart',83);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (85,'Tunnel',83);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (86,'TunnelInstallation',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (87,'IntTunnelInstallation',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (88,'_TunnelBoundarySurface',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (89,'TunnelCeilingSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (90,'InteriorTunnelWallSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (91,'TunnelFloorSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (92,'TunnelRoofSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (93,'TunnelWallSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (94,'TunnelGroundSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (95,'TunnelClosureSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (96,'OuterTunnelCeilingSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (97,'OuterTunnelFloorSurface',88);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (98,'_TunnelOpening',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (99,'TunnelWindow',98);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (100,'TunnelDoor',98);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (101,'TunnelFurniture',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (102,'HollowSpace',3);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (103,'TexCoordList',56);

INSERT INTO citydb.OBJECTCLASS ( ID , CLASSNAME , SUPERCLASS_ID )
VALUES (104,'TexCoordGen',56);