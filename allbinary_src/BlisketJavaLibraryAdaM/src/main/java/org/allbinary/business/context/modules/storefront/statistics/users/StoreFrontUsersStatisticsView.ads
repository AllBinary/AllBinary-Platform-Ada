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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreFrontUsersStatisticsView is tagged;
   type StoreFrontUsersStatisticsView_Access is access all StoreFrontUsersStatisticsView'Class;
   type StoreFrontUsersStatisticsView_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsView_Access;
   type StoreFrontUsersStatisticsView_Access_Array_Access is access all StoreFrontUsersStatisticsView_Access_Array;
   type StoreFrontUsersStatisticsView_Access_Array_Access_Array is array (Natural range <>) of StoreFrontUsersStatisticsView_Access_Array_Access;
   type StoreFrontUsersStatisticsView_Access_Array_Access_Array_Access is access all StoreFrontUsersStatisticsView_Access_Array_Access_Array;

   type StoreFrontUsersStatisticsView is new Java_Object and DomNodeInterface with record
      storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface_Access;
   end record;

   procedure Initialize (This : in out StoreFrontUsersStatisticsView'Class; storeFrontUsersStatisticsInterface_Param : access StoreFrontUsersStatisticsInterface_Package.StoreFrontUsersStatisticsInterface'Class);
   function Create (storeFrontUsersStatisticsInterface_Param : access StoreFrontUsersStatisticsInterface_Package.StoreFrontUsersStatisticsInterface'Class) return StoreFrontUsersStatisticsView_Access;
   function toXmlNode (This : in out StoreFrontUsersStatisticsView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out StoreFrontUsersStatisticsView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package;


