--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Closeable_Package; use java.io.Closeable_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.io.NullCloseable_Package; use org.allbinary.logic.io.NullCloseable_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.configuration.ApplicationConfiguration_Package is

   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbDataInputStream_Package renames Standard.org.allbinary.logic.io.AbDataInputStream_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package NullCloseable_Package renames Standard.org.allbinary.logic.io.NullCloseable_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file.FileFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ApplicationConfiguration is tagged;
   type ApplicationConfiguration_Access is access all ApplicationConfiguration'Class;
   type ApplicationConfiguration_Access_Array is array (Natural range <>) of ApplicationConfiguration_Access;
   type ApplicationConfiguration_Access_Array_Access is access all ApplicationConfiguration_Access_Array;

   type ApplicationConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      fullscreen : Boolean;
      showTitleBar : Boolean;
      progressBarView : Boolean;
      FILE : Unbounded_String;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out ApplicationConfiguration'Class);
   function Create return ApplicationConfiguration_Access;
   function getInstance return ApplicationConfiguration_Access;
   procedure read (This : in out ApplicationConfiguration);
   procedure write (This : in out ApplicationConfiguration);
   procedure update (This : in out ApplicationConfiguration; gameFeature : Feature_Access);
   procedure setFullscreen (This : in out ApplicationConfiguration; fullscreen : Boolean);
   function isFullscreen (This : in out ApplicationConfiguration) return Boolean;
   procedure setShowTitleBar (This : in out ApplicationConfiguration; showTitleBar : Boolean);
   function isShowTitleBar (This : in out ApplicationConfiguration) return Boolean;
   procedure setProgressBarView (This : in out ApplicationConfiguration; progressBarView : Boolean);
   function isProgressBarView (This : in out ApplicationConfiguration) return Boolean;
   function toString (This : in out ApplicationConfiguration) return Unbounded_String;

end org.allbinary.configuration.ApplicationConfiguration_Package;


