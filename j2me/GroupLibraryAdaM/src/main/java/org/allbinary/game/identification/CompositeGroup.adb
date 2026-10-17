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


package body org.allbinary.game.identification.CompositeGroup_Package is

   procedure Initialize_Fields (This : in out CompositeGroup'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out CompositeGroup'Class; groupInterface : Group_Access) is
   begin
      Initialize_Fields (This);
        This.groupInterface := groupInterface;
   end Initialize;

   function Create (groupInterface : Group_Access) return CompositeGroup_Access is
      This : constant CompositeGroup_Access := new CompositeGroup;
   begin
      CompositeGroup_Package.Initialize (This.all, groupInterface);
      return This;
   end Create;

   procedure clear (This : in out CompositeGroup) is
   begin
        This.list.clear;
   end clear;

   procedure add (This : in out CompositeGroup; groupInterface : Group_Access) is
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
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, commonStrings.ADD);
        This.list.add (groupInterface);
   end add;

   function isInGroup (This : in out CompositeGroup; groupInterface : Group_Access) return Boolean is
   begin
        if This.list.contains (groupInterface) then
            return True;
        else
            return False;
        end if;
   end isInGroup;

   function getGroup (This : in out CompositeGroup) return Group_Access is
   begin
        return This.groupInterface;
   end getGroup;

   procedure isInGroup (This : in out CompositeGroup; groupInterface : Group_Access) is
      Java_Result : constant Boolean := CompositeGroup'Class (This).isInGroup (groupInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInGroup;

end org.allbinary.game.identification.CompositeGroup_Package;


