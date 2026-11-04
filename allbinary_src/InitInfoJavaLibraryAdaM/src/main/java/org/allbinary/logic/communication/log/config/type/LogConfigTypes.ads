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

limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References is
   type LogConfigTypes_Access is access all org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package.LogConfigTypes'Class;
   type LogConfigTypes_Access_Array is array (Natural range <>) of LogConfigTypes_Access;
   type LogConfigTypes_Access_Array_Access is access all LogConfigTypes_Access_Array;
   type LogConfigTypes_Access_Array_Access_Array is array (Natural range <>) of LogConfigTypes_Access_Array_Access;
   type LogConfigTypes_Access_Array_Access_Array_Access is access all LogConfigTypes_Access_Array_Access_Array;
end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References;

with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype LogConfigType_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access;
   use type LogConfigType_Access;
   subtype LogConfigType_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array;
   use type LogConfigType_Access_Array;
   subtype LogConfigType_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access;
   use type LogConfigType_Access_Array_Access;
   subtype LogConfigType_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array;
   use type LogConfigType_Access_Array_Access_Array;
   subtype LogConfigType_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package_References.LogConfigType_Access_Array_Access_Array_Access;
   use type LogConfigType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogConfigTypes_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access;
   function "=" (Left, Right : LogConfigTypes_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   subtype LogConfigTypes_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array;
   function "=" (Left, Right : LogConfigTypes_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   subtype LogConfigTypes_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypes_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   subtype LogConfigTypes_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigTypes_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   subtype LogConfigTypes_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypes_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";

   type LogConfigTypes is new Java_Object with null record;
   JSP_ERROR_NO_FUNCTION : Unbounded_String;
   LOGGING : BasicArrayList_Access;

   procedure Initialize (This : in out LogConfigTypes'Class);
   function Create return LogConfigTypes_Access;
   procedure init;
   function getInstance (node_Param : access Node_Package.Node'Class) return LogConfigType_Access;
   procedure getInstance (node_Param : access Node_Package.Node'Class);

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;


