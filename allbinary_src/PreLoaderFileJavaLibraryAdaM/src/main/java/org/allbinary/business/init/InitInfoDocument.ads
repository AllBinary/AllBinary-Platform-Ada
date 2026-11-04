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

limited with org.allbinary.business.init.InitInfoDocument_Package;
package org.allbinary.business.init.InitInfoDocument_Package_References is
   type InitInfoDocument_Access is access all org.allbinary.business.init.InitInfoDocument_Package.InitInfoDocument'Class;
   type InitInfoDocument_Access_Array is array (Natural range <>) of InitInfoDocument_Access;
   type InitInfoDocument_Access_Array_Access is access all InitInfoDocument_Access_Array;
   type InitInfoDocument_Access_Array_Access_Array is array (Natural range <>) of InitInfoDocument_Access_Array_Access;
   type InitInfoDocument_Access_Array_Access_Array_Access is access all InitInfoDocument_Access_Array_Access_Array;
end org.allbinary.business.init.InitInfoDocument_Package_References;

with org.allbinary.business.init.InitInfoDocument_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.business.init.InitInfoDocument_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype InitInfoDocument_Access is org.allbinary.business.init.InitInfoDocument_Package_References.InitInfoDocument_Access;
   function "=" (Left, Right : InitInfoDocument_Access) return Boolean renames org.allbinary.business.init.InitInfoDocument_Package_References."=";
   subtype InitInfoDocument_Access_Array is org.allbinary.business.init.InitInfoDocument_Package_References.InitInfoDocument_Access_Array;
   function "=" (Left, Right : InitInfoDocument_Access_Array) return Boolean renames org.allbinary.business.init.InitInfoDocument_Package_References."=";
   subtype InitInfoDocument_Access_Array_Access is org.allbinary.business.init.InitInfoDocument_Package_References.InitInfoDocument_Access_Array_Access;
   function "=" (Left, Right : InitInfoDocument_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfoDocument_Package_References."=";
   subtype InitInfoDocument_Access_Array_Access_Array is org.allbinary.business.init.InitInfoDocument_Package_References.InitInfoDocument_Access_Array_Access_Array;
   function "=" (Left, Right : InitInfoDocument_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.InitInfoDocument_Package_References."=";
   subtype InitInfoDocument_Access_Array_Access_Array_Access is org.allbinary.business.init.InitInfoDocument_Package_References.InitInfoDocument_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitInfoDocument_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfoDocument_Package_References."=";

   type InitInfoDocument is new Java_Object with record
      initInfoDocument_Var : Document_Access;
   end record;

   procedure Initialize (This : in out InitInfoDocument'Class);
   function Create return InitInfoDocument_Access;

end org.allbinary.business.init.InitInfoDocument_Package;


