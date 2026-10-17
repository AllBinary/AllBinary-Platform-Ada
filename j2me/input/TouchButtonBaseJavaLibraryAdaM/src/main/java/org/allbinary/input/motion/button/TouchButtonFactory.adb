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


package body org.allbinary.input.motion.button.TouchButtonFactory_Package is

   procedure Initialize_Fields (This : in out TouchButtonFactory'Class) is
   begin
      null;
      This.LIST := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
      This.list_Case := This.LIST;
      This.savedList := This.LIST;
      This.saved := False;
   end Initialize_Fields;


   function getInstance return TouchButtonFactory_Access is
   begin
        return TouchButtonFactory_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out TouchButtonFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TouchButtonFactory_Access is
      This : constant TouchButtonFactory_Access := new TouchButtonFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure defaultList (This : in out TouchButtonFactory) is
   begin
        This.list_Case := This.LIST;
        This.toggle (False, This.LIST);
   end defaultList;

   procedure toggle (This : in out TouchButtonFactory; save : Boolean; list_Case : BasicArrayList_Access) is
   begin
        if (list_Case) /= (BasicArrayListUtil_Package.getInstance.getImmutableInstance) then
            This.savedList := list_Case;
            if not (This.saved) then
                This.list_Case := This.savedList;
            end if;
        else
            if save then
                if not (This.saved) then
                    This.saved := True;
                    This.savedList := This.list_Case;
                    This.list_Case := This.LIST;
                else
                    null;
                end if;
            else
                This.list_Case := This.savedList;
                This.saved := False;
            end if;
        end if;
   end toggle;

   --  throws Exception
   procedure setList (This : in out TouchButtonFactory; list_Case : BasicArrayList_Access) is
   begin
        if (list_Case) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Null List")));
        end if;
        This.list_Case := list_Case;
   end setList;

   function getList (This : in out TouchButtonFactory) return BasicArrayList_Access is
   begin
        return This.list_Case;
   end getList;

   procedure getInstance is
      Java_Result : constant TouchButtonFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getList (This : in out TouchButtonFactory) is
      Java_Result : constant BasicArrayList_Access := TouchButtonFactory'Class (This).getList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getList;

begin
   null;
   SINGLETON := TouchButtonFactory_Package.Create;

end org.allbinary.input.motion.button.TouchButtonFactory_Package;


