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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;

package body org.allbinary.game.identification.CompositeGroup_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out CompositeGroup'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out CompositeGroup'Class; groupInterface_Param : access Group_Package.Group'Class) is
      groupInterface : constant Group_Access := Group_Access (groupInterface_Param);
   begin
      Initialize_Fields (This);
        This.groupInterface := groupInterface;
   end Initialize;

   function Create (groupInterface_Param : access Group_Package.Group'Class) return CompositeGroup_Access is
      This : constant CompositeGroup_Access := new CompositeGroup;
   begin
      CompositeGroup_Package.Initialize (This.all, groupInterface_Param);
      return This;
   end Create;

   procedure clear (This : in out CompositeGroup) is
   begin
        This.list.clear;
   end clear;

   procedure add (This : in out CompositeGroup; groupInterface_Param : access Group_Package.Group'Class) is
      groupInterface : constant Group_Access := Group_Access (groupInterface_Param);
      commonStrings : CommonStrings_Access;
      groupCommonFactory : GroupCommonFactory_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        groupCommonFactory := GroupCommonFactory_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (groupCommonFactory.ADDING_LABEL);
        stringBuffer.append (groupInterface.toString);
        stringBuffer.append (groupCommonFactory.TO_LABEL);
        stringBuffer.append (StringUtil_Package.getInstance.toString (This.groupInterface));
        This.logUtil.putF (stringBuffer.toString, CompositeGroup_Access'(This'Unchecked_Access), commonStrings.ADD);
        This.list.add (Java_Object_Access (groupInterface));
   end add;

   function isInGroup (This : in out CompositeGroup; groupInterface_Param : access Group_Package.Group'Class) return Boolean is
      groupInterface : constant Group_Access := Group_Access (groupInterface_Param);
   begin
        if This.list.contains (Java_Object_Access (groupInterface)) then
            return True;
        else
            return False;
        end if;
   end isInGroup;

   function getGroup (This : in out CompositeGroup) return Group_Access is
   begin
        return This.groupInterface;
   end getGroup;

   procedure isInGroup (This : in out CompositeGroup; groupInterface_Param : access Group_Package.Group'Class) is
      Java_Result : constant Boolean := CompositeGroup'Class (This).isInGroup (groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInGroup;

end org.allbinary.game.identification.CompositeGroup_Package;


