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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package;

package taghelpers.transform.info.TransformInfoRequestHelper_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ModifyTable_Package renames admin.taghelpers.ModifyTable_Package;
   package TransformInfoEntityBuilder_Package renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoHttpInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoHttpStoreNoManipulation_Package renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package;

   type TransformInfoRequestHelper is tagged;
   type TransformInfoRequestHelper_Access is access all TransformInfoRequestHelper'Class;
   type TransformInfoRequestHelper_Access_Array is array (Natural range <>) of TransformInfoRequestHelper_Access;
   type TransformInfoRequestHelper_Access_Array_Access is access all TransformInfoRequestHelper_Access_Array;

   type TransformInfoRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      transformInfoInterface : TransformInfoHttpInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoRequestHelper'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoRequestHelper_Access;
   function update (This : in out TransformInfoRequestHelper) return Unbounded_String;
   procedure update (This : in out TransformInfoRequestHelper);
   function insert (This : in out TransformInfoRequestHelper) return Unbounded_String;
   procedure insert (This : in out TransformInfoRequestHelper);
   function delete (This : in out TransformInfoRequestHelper) return Unbounded_String;
   procedure delete (This : in out TransformInfoRequestHelper);

end taghelpers.transform.info.TransformInfoRequestHelper_Package;


