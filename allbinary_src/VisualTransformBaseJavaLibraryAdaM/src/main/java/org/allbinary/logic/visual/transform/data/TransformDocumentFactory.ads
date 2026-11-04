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

limited with org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
package org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References is
   type TransformDocumentFactory_Access is access all org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package.TransformDocumentFactory'Class;
   type TransformDocumentFactory_Access_Array is array (Natural range <>) of TransformDocumentFactory_Access;
   type TransformDocumentFactory_Access_Array_Access is access all TransformDocumentFactory_Access_Array;
   type TransformDocumentFactory_Access_Array_Access_Array is array (Natural range <>) of TransformDocumentFactory_Access_Array_Access;
   type TransformDocumentFactory_Access_Array_Access_Array_Access is access all TransformDocumentFactory_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References;

with org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;

package org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package is

   package Reference_Types is
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   use type TransformDocumentInterface_Access;
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   use type TransformDocumentInterface_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access;
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   use type TransformDocumentInterface_Access_Array_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformDocumentFactory_Access is org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References.TransformDocumentFactory_Access;
   function "=" (Left, Right : TransformDocumentFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References."=";
   subtype TransformDocumentFactory_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References.TransformDocumentFactory_Access_Array;
   function "=" (Left, Right : TransformDocumentFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References."=";
   subtype TransformDocumentFactory_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References.TransformDocumentFactory_Access_Array_Access;
   function "=" (Left, Right : TransformDocumentFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References."=";
   subtype TransformDocumentFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References.TransformDocumentFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformDocumentFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References."=";
   subtype TransformDocumentFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References.TransformDocumentFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformDocumentFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package_References."=";

   type TransformDocumentFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformDocumentFactory'Class);
   function Create return TransformDocumentFactory_Access;
   function getInstance return TransformDocumentInterface_Access;

end org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;


