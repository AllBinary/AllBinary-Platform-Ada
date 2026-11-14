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
limited with org.allbinary.graphics.opengles.OpenGLConfiguration_Package;
package org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References is
   type OpenGLConfiguration_Access is access all org.allbinary.graphics.opengles.OpenGLConfiguration_Package.OpenGLConfiguration'Class;
   type OpenGLConfiguration_Access_Array is array (Natural range <>) of OpenGLConfiguration_Access;
   type OpenGLConfiguration_Access_Array_Access is access all OpenGLConfiguration_Access_Array;
   type OpenGLConfiguration_Access_Array_Access_Array is array (Natural range <>) of OpenGLConfiguration_Access_Array_Access;
   type OpenGLConfiguration_Access_Array_Access_Array_Access is access all OpenGLConfiguration_Access_Array_Access_Array;
   type OpenGLConfiguration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLConfiguration_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLConfiguration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLConfiguration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLConfiguration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLConfiguration_Access_Array_Access is (if Value /= null and then Value.all in OpenGLConfiguration_Access_Array_Object'Class then OpenGLConfiguration_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLConfiguration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLConfiguration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLConfiguration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLConfiguration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLConfiguration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLConfiguration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLConfiguration_Access_Array_Access_Array_Object'Class then OpenGLConfiguration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References;

with org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;
limited with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package_References;

package org.allbinary.graphics.opengles.OpenGLConfiguration_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package Reference_Types is
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
   subtype OpenGLFeature_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access;
   use type OpenGLFeature_Access;
   subtype OpenGLFeature_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array;
   use type OpenGLFeature_Access_Array;
   subtype OpenGLFeature_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access;
   use type OpenGLFeature_Access_Array_Access;
   subtype OpenGLFeature_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array;
   use type OpenGLFeature_Access_Array_Access_Array;
   subtype OpenGLFeature_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array_Access;
   use type OpenGLFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLConfiguration_Access is org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.OpenGLConfiguration_Access;
   function "=" (Left, Right : OpenGLConfiguration_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References."=";
   subtype OpenGLConfiguration_Access_Array is org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.OpenGLConfiguration_Access_Array;
   function "=" (Left, Right : OpenGLConfiguration_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References."=";
   subtype OpenGLConfiguration_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.OpenGLConfiguration_Access_Array_Access;
   function "=" (Left, Right : OpenGLConfiguration_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References."=";
   function Java_Box (Value : OpenGLConfiguration_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.Java_Box;
   function Java_Unbox_OpenGLConfiguration_Access_Array (Value : access Java_Object'Class) return OpenGLConfiguration_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.Java_Unbox_OpenGLConfiguration_Access_Array;
   subtype OpenGLConfiguration_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.OpenGLConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References."=";
   subtype OpenGLConfiguration_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.OpenGLConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References."=";
   function Java_Box (Value : OpenGLConfiguration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.Java_Box;
   function Java_Unbox_OpenGLConfiguration_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLConfiguration_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLConfiguration_Package_References.Java_Unbox_OpenGLConfiguration_Access_Array_Access_Array;

   type OpenGLConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      FILE : Unbounded_String;
      commonStrings : CommonStrings_Access;
      opengl : Boolean;
      type_Id : OpenGLFeature_Access;
      imageColor : OpenGLFeature_Access;
      color : OpenGLFeature_Access;
      versionSelector : OpenGLFeature_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out OpenGLConfiguration'Class);
   function Create return OpenGLConfiguration_Access;
   function getInstance return OpenGLConfiguration_Access;
   procedure read (This : in out OpenGLConfiguration);
   procedure write (This : in out OpenGLConfiguration);
   procedure init (This : in out OpenGLConfiguration);
   procedure update (This : in out OpenGLConfiguration; gameFeature_Param : access Feature_Package.Feature'Class; colorLocked : Boolean);
   procedure setOpenGL (This : in out OpenGLConfiguration; opengl : Boolean);
   function isOpenGL (This : in out OpenGLConfiguration) return Boolean;
   procedure setImageColor (This : in out OpenGLConfiguration; imageColor_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getImageColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure setColor (This : in out OpenGLConfiguration; color_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure setVersionSelector (This : in out OpenGLConfiguration; versionSelector_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getVersionSelector (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure setType (This : in out OpenGLConfiguration; type_Id_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getType (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   function toString (This : in out OpenGLConfiguration) return Unbounded_String;

end org.allbinary.graphics.opengles.OpenGLConfiguration_Package;


