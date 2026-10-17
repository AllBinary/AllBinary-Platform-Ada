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


package body admin.tags.ParentInventoryTagHelper_Package is

   procedure Initialize_Fields (This : in out ParentInventoryTagHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ParentInventoryTagHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ParentInventoryTagHelper_Access is
      This : constant ParentInventoryTagHelper_Access := new ParentInventoryTagHelper;
   begin
      ParentInventoryTagHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ParentInventoryTagHelper_Access is
   begin
        return ParentInventoryTagHelper_Package.instance;
   end getInstance;

   --  throws Exception
   procedure isValid (This : in out ParentInventoryTagHelper; tagClass_Param : access Java_Object'Class; parentTag_Param : access Tag_Package.Tag'Class) is
      tagClass : constant Java_Object_Access := Java_Object_Access (tagClass_Param);
      parentTag : constant Tag_Access := Tag_Access (parentTag_Param);
      stringBuffer : StringMaker_Access;
   begin
        if (parentTag) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Must have parent tag.")));
        elsif not (((parentTag.all in HelperTag_Package.HelperTag'Class))) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Must have at least a "));
            stringBuffer.append (To_Unbounded_String ("tags.HelperTag"));
            stringBuffer.append (To_Unbounded_String (" as parent"));
            stringBuffer.append (To_Unbounded_String ("and not: "));
            stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (parentTag.all'Tag)));
            Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
        end if;
   end isValid;

begin
   null;
   instance := ParentInventoryTagHelper_Package.Create;

end admin.tags.ParentInventoryTagHelper_Package;


