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


with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package body org.allbinary.input.motion.button.TouchButtonFactory_Package is

   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
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
      TouchButtonFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure defaultList (This : in out TouchButtonFactory) is
   begin
        This.list_Case := This.LIST;
        TouchButtonFactory'Class (This).toggle (False, This.LIST);
   end defaultList;

   procedure toggle (This : in out TouchButtonFactory; save : Boolean; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        if (list) /= (BasicArrayListUtil_Package.getInstance.getImmutableInstance) then
            This.savedList := list;
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
   procedure setList (This : in out TouchButtonFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        if (list) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Null List")));
        end if;
        This.list_Case := list;
   end setList;

   function getList (This : in out TouchButtonFactory) return BasicArrayList_Access is
   begin
        return This.list_Case;
   end getList;

begin
   null;
   SINGLETON := TouchButtonFactory_Package.Create;

end org.allbinary.input.motion.button.TouchButtonFactory_Package;


