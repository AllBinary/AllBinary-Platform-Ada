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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.log.config.LogConfigData_Package; use org.allbinary.logic.communication.log.config.LogConfigData_Package;

package org.allbinary.logic.communication.log.config.LogConfig_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type LogConfig is tagged;
   type LogConfig_Access is access all LogConfig'Class;
   type LogConfig_Access_Array is array (Natural range <>) of LogConfig_Access;
   type LogConfig_Access_Array_Access is access all LogConfig_Access_Array;

   type LogConfig is new Java_Object with record
      isEnabled : Boolean;
      name : Unbounded_String;
      description : Unbounded_String;
      path : Unbounded_String;
      fileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out LogConfig'Class; aName : Unbounded_String; aDescription : Unbounded_String; aPath : Unbounded_String; aFileName : Unbounded_String);
   function Create (aName : Unbounded_String; aDescription : Unbounded_String; aPath : Unbounded_String; aFileName : Unbounded_String) return LogConfig_Access;
   procedure Initialize (This : in out LogConfig'Class; node : Node_Access);
   function Create (node : Node_Access) return LogConfig_Access;
   function getName (This : in out LogConfig) return Unbounded_String;
   function isEnabled (This : in out LogConfig) return Boolean;
   procedure enable (This : in out LogConfig);
   procedure disable (This : in out LogConfig);
   function getDescription (This : in out LogConfig) return Unbounded_String;
   function getFileName (This : in out LogConfig) return Unbounded_String;
   procedure setName (This : in out LogConfig; value : Unbounded_String);
   procedure setDescription (This : in out LogConfig; value : Unbounded_String);
   procedure setPath (This : in out LogConfig; value : Unbounded_String);
   procedure setFileName (This : in out LogConfig; value : Unbounded_String);
   function getTypeVector (This : in out LogConfig) return BasicArrayList_Access;

end org.allbinary.logic.communication.log.config.LogConfig_Package;


