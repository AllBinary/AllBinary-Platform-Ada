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
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.LoggingInitInfo_Package; use org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package is

   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package LoggingInitInfo_Package renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type LogConfigTypes is tagged;
   type LogConfigTypes_Access is access all LogConfigTypes'Class;
   type LogConfigTypes_Access_Array is array (Natural range <>) of LogConfigTypes_Access;
   type LogConfigTypes_Access_Array_Access is access all LogConfigTypes_Access_Array;

   type LogConfigTypes is new Java_Object with null record;
   JSP_ERROR_NO_FUNCTION : Unbounded_String;
   LOGGING : BasicArrayList_Access;

   procedure Initialize (This : in out LogConfigTypes'Class);
   function Create return LogConfigTypes_Access;
   procedure init;
   function getInstance (node : Node_Access) return LogConfigType_Access;
   procedure getInstance (node : Node_Access);

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;


