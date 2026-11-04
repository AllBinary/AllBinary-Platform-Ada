--  Generated Code Do Not Modify

limited with org.allbinary.configuration.ApplicationConfiguration_Package;
package org.allbinary.configuration.ApplicationConfiguration_Package_References is
   type ApplicationConfiguration_Access is access all org.allbinary.configuration.ApplicationConfiguration_Package.ApplicationConfiguration'Class;
   type ApplicationConfiguration_Access_Array is array (Natural range <>) of ApplicationConfiguration_Access;
   type ApplicationConfiguration_Access_Array_Access is access all ApplicationConfiguration_Access_Array;
   type ApplicationConfiguration_Access_Array_Access_Array is array (Natural range <>) of ApplicationConfiguration_Access_Array_Access;
   type ApplicationConfiguration_Access_Array_Access_Array_Access is access all ApplicationConfiguration_Access_Array_Access_Array;
end org.allbinary.configuration.ApplicationConfiguration_Package_References;

with org.allbinary.configuration.ApplicationConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.configuration.ApplicationConfiguration_Package is

   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype ApplicationConfiguration_Access is org.allbinary.configuration.ApplicationConfiguration_Package_References.ApplicationConfiguration_Access;
   function "=" (Left, Right : ApplicationConfiguration_Access) return Boolean renames org.allbinary.configuration.ApplicationConfiguration_Package_References."=";
   subtype ApplicationConfiguration_Access_Array is org.allbinary.configuration.ApplicationConfiguration_Package_References.ApplicationConfiguration_Access_Array;
   function "=" (Left, Right : ApplicationConfiguration_Access_Array) return Boolean renames org.allbinary.configuration.ApplicationConfiguration_Package_References."=";
   subtype ApplicationConfiguration_Access_Array_Access is org.allbinary.configuration.ApplicationConfiguration_Package_References.ApplicationConfiguration_Access_Array_Access;
   function "=" (Left, Right : ApplicationConfiguration_Access_Array_Access) return Boolean renames org.allbinary.configuration.ApplicationConfiguration_Package_References."=";
   subtype ApplicationConfiguration_Access_Array_Access_Array is org.allbinary.configuration.ApplicationConfiguration_Package_References.ApplicationConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : ApplicationConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.configuration.ApplicationConfiguration_Package_References."=";
   subtype ApplicationConfiguration_Access_Array_Access_Array_Access is org.allbinary.configuration.ApplicationConfiguration_Package_References.ApplicationConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ApplicationConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.configuration.ApplicationConfiguration_Package_References."=";

   type ApplicationConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      fullscreen : Boolean;
      showTitleBar : Boolean;
      progressBarView : Boolean;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out ApplicationConfiguration'Class);
   function Create return ApplicationConfiguration_Access;
   function getInstance return ApplicationConfiguration_Access;
   procedure read (This : in out ApplicationConfiguration);
   procedure write (This : in out ApplicationConfiguration);
   procedure update (This : in out ApplicationConfiguration; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure setFullscreen (This : in out ApplicationConfiguration; fullscreen : Boolean);
   function isFullscreen (This : in out ApplicationConfiguration) return Boolean;
   procedure setShowTitleBar (This : in out ApplicationConfiguration; showTitleBar : Boolean);
   function isShowTitleBar (This : in out ApplicationConfiguration) return Boolean;
   procedure setProgressBarView (This : in out ApplicationConfiguration; progressBarView : Boolean);
   function isProgressBarView (This : in out ApplicationConfiguration) return Boolean;
   function toString (This : in out ApplicationConfiguration) return Unbounded_String;

end org.allbinary.configuration.ApplicationConfiguration_Package;


