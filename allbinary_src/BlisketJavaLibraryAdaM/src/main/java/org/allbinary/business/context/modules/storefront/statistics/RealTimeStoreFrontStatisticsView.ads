--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package is

   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type RealTimeStoreFrontStatisticsView is tagged;
   type RealTimeStoreFrontStatisticsView_Access is access all RealTimeStoreFrontStatisticsView'Class;
   type RealTimeStoreFrontStatisticsView_Access_Array is array (Natural range <>) of RealTimeStoreFrontStatisticsView_Access;
   type RealTimeStoreFrontStatisticsView_Access_Array_Access is access all RealTimeStoreFrontStatisticsView_Access_Array;
   type RealTimeStoreFrontStatisticsView_Access_Array_Access_Array is array (Natural range <>) of RealTimeStoreFrontStatisticsView_Access_Array_Access;
   type RealTimeStoreFrontStatisticsView_Access_Array_Access_Array_Access is access all RealTimeStoreFrontStatisticsView_Access_Array_Access_Array;

   type RealTimeStoreFrontStatisticsView is new Java_Object and DomNodeInterface with record
      storeFrontStatisticsInterface : StoreFrontStatisticsInterface_Access;
      userRole : UserRole_Access;
   end record;

   procedure Initialize (This : in out RealTimeStoreFrontStatisticsView'Class; storeFrontStatisticsInterface_Param : access StoreFrontStatisticsInterface_Package.StoreFrontStatisticsInterface'Class; userRole_Param : access UserRole_Package.UserRole'Class);
   function Create (storeFrontStatisticsInterface_Param : access StoreFrontStatisticsInterface_Package.StoreFrontStatisticsInterface'Class; userRole_Param : access UserRole_Package.UserRole'Class) return RealTimeStoreFrontStatisticsView_Access;
   function toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;


