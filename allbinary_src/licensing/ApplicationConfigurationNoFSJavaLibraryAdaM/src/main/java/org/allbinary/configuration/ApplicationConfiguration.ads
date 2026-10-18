--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.configuration.ApplicationConfiguration_Package is

   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ApplicationConfiguration is tagged;
   type ApplicationConfiguration_Access is access all ApplicationConfiguration'Class;
   type ApplicationConfiguration_Access_Array is array (Natural range <>) of ApplicationConfiguration_Access;
   type ApplicationConfiguration_Access_Array_Access is access all ApplicationConfiguration_Access_Array;
   type ApplicationConfiguration_Access_Array_Access_Array is array (Natural range <>) of ApplicationConfiguration_Access_Array_Access;
   type ApplicationConfiguration_Access_Array_Access_Array_Access is access all ApplicationConfiguration_Access_Array_Access_Array;

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


