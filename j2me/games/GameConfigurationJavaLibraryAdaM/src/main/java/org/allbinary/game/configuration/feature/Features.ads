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

with AllBinary_Java;
limited with org.allbinary.game.configuration.feature.Features_Package;
package org.allbinary.game.configuration.feature.Features_Package_References is
   type Features_Access is access all org.allbinary.game.configuration.feature.Features_Package.Features'Class;
   type Features_Access_Array is array (Natural range <>) of Features_Access;
   type Features_Access_Array_Access is access all Features_Access_Array;
   type Features_Access_Array_Access_Array is array (Natural range <>) of Features_Access_Array_Access;
   type Features_Access_Array_Access_Array_Access is access all Features_Access_Array_Access_Array;
   type Features_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Features_Access_Array_Access;
   end record;
   function Java_Box (Value : Features_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Features_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Features_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Features_Access_Array_Access is (if Value /= null and then Value.all in Features_Access_Array_Object'Class then Features_Access_Array_Object'Class (Value.all).Value else null);
   type Features_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Features_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Features_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Features_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Features_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Features_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Features_Access_Array_Access_Array_Object'Class then Features_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.Features_Package_References;

with org.allbinary.game.configuration.feature.Features_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;

package org.allbinary.game.configuration.feature.Features_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   subtype Feature_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access;
   use type Feature_Access;
   subtype Feature_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array;
   use type Feature_Access_Array;
   subtype Feature_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access;
   use type Feature_Access_Array_Access;
   subtype Feature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array;
   use type Feature_Access_Array_Access_Array;
   subtype Feature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array_Access;
   use type Feature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Features_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access;
   function "=" (Left, Right : Features_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array;
   function "=" (Left, Right : Features_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   function Java_Box (Value : Features_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.Features_Package_References.Java_Box;
   function Java_Unbox_Features_Access_Array (Value : access Java_Object'Class) return Features_Access_Array_Access renames org.allbinary.game.configuration.feature.Features_Package_References.Java_Unbox_Features_Access_Array;
   subtype Features_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array;
   function "=" (Left, Right : Features_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   function Java_Box (Value : Features_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.Features_Package_References.Java_Box;
   function Java_Unbox_Features_Access_Array_Access_Array (Value : access Java_Object'Class) return Features_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.Features_Package_References.Java_Unbox_Features_Access_Array_Access_Array;

   type Features is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      list : BasicArrayList_Access;
      defaultList : BasicArrayList_Access;
   end record;
   SINGLETON : Java_Object_Access;

   procedure Initialize (This : in out Features'Class);
   function Create return Features_Access;
   function getInstance return Features_Access;
   procedure addDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure add (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure removeDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure remove (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure init (This : in out Features);
   function isDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) return Boolean;
   procedure isDefault (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class);
   function isFeature (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class) return Boolean;
   procedure isFeature (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure toggle (This : in out Features; gameFeature_Param : access Feature_Package.Feature'Class);

end org.allbinary.game.configuration.feature.Features_Package;


