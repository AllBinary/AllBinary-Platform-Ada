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
limited with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package;
package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References is
   type FtpConfigurationView_Access is access all org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package.FtpConfigurationView'Class;
   type FtpConfigurationView_Access_Array is array (Natural range <>) of FtpConfigurationView_Access;
   type FtpConfigurationView_Access_Array_Access is access all FtpConfigurationView_Access_Array;
   type FtpConfigurationView_Access_Array_Access_Array is array (Natural range <>) of FtpConfigurationView_Access_Array_Access;
   type FtpConfigurationView_Access_Array_Access_Array_Access is access all FtpConfigurationView_Access_Array_Access_Array;
   type FtpConfigurationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FtpConfigurationView_Access_Array_Access;
   end record;
   function Java_Box (Value : FtpConfigurationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FtpConfigurationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FtpConfigurationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FtpConfigurationView_Access_Array_Access is (if Value /= null and then Value.all in FtpConfigurationView_Access_Array_Object'Class then FtpConfigurationView_Access_Array_Object'Class (Value.all).Value else null);
   type FtpConfigurationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FtpConfigurationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FtpConfigurationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FtpConfigurationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FtpConfigurationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FtpConfigurationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FtpConfigurationView_Access_Array_Access_Array_Object'Class then FtpConfigurationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References;

with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References;

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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
   subtype FtpConfigurationInterface_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access;
   use type FtpConfigurationInterface_Access;
   subtype FtpConfigurationInterface_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array;
   use type FtpConfigurationInterface_Access_Array;
   subtype FtpConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access;
   use type FtpConfigurationInterface_Access_Array_Access;
   subtype FtpConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array;
   use type FtpConfigurationInterface_Access_Array_Access_Array;
   subtype FtpConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array_Access;
   use type FtpConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FtpConfigurationView_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.FtpConfigurationView_Access;
   function "=" (Left, Right : FtpConfigurationView_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References."=";
   subtype FtpConfigurationView_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.FtpConfigurationView_Access_Array;
   function "=" (Left, Right : FtpConfigurationView_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References."=";
   subtype FtpConfigurationView_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.FtpConfigurationView_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationView_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References."=";
   function Java_Box (Value : FtpConfigurationView_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.Java_Box;
   function Java_Unbox_FtpConfigurationView_Access_Array (Value : access Java_Object'Class) return FtpConfigurationView_Access_Array_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.Java_Unbox_FtpConfigurationView_Access_Array;
   subtype FtpConfigurationView_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.FtpConfigurationView_Access_Array_Access_Array;
   function "=" (Left, Right : FtpConfigurationView_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References."=";
   subtype FtpConfigurationView_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.FtpConfigurationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References."=";
   function Java_Box (Value : FtpConfigurationView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.Java_Box;
   function Java_Unbox_FtpConfigurationView_Access_Array_Access_Array (Value : access Java_Object'Class) return FtpConfigurationView_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package_References.Java_Unbox_FtpConfigurationView_Access_Array_Access_Array;

   type FtpConfigurationView is new Java_Object and DomNodeInterface with record
      ftpConfigurationInterface : FtpConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out FtpConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return FtpConfigurationView_Access;
   procedure Initialize (This : in out FtpConfigurationView'Class; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class);
   function Create (ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) return FtpConfigurationView_Access;
   function toXmlNode (This : in out FtpConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out FtpConfigurationView; document_Param : access Document_Package.Document'Class);
   function getFtpConfigurationInterface (This : in out FtpConfigurationView) return FtpConfigurationInterface_Access;
   procedure setFtpConfigurationInterface (This : in out FtpConfigurationView; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class);

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView_Package;


