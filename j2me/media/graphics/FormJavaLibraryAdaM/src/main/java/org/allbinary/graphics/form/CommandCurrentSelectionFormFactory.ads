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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package; use org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package; use org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;
with org.allbinary.graphics.form.CommandCurrentSelectionForm_Package; use org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package TouchFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;

   type CommandCurrentSelectionFormFactory is tagged;
   type CommandCurrentSelectionFormFactory_Access is access all CommandCurrentSelectionFormFactory'Class;
   type CommandCurrentSelectionFormFactory_Access_Array is array (Natural range <>) of CommandCurrentSelectionFormFactory_Access;
   type CommandCurrentSelectionFormFactory_Access_Array_Access is access all CommandCurrentSelectionFormFactory_Access_Array;

   type CommandCurrentSelectionFormFactory is new Java_Object with null record;

   procedure Initialize (This : in out CommandCurrentSelectionFormFactory'Class);
   function Create return CommandCurrentSelectionFormFactory_Access;
   function getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ScrollSelectionForm_Access;
   procedure getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;


