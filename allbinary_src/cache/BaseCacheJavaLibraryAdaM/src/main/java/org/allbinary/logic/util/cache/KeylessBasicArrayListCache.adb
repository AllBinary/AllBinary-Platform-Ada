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


package body org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package is

   procedure Initialize_Fields (This : in out KeylessBasicArrayListCache'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out KeylessBasicArrayListCache'Class) is
   begin
      IndexedBasicArrayListCache_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeylessBasicArrayListCache_Access is
      This : constant KeylessBasicArrayListCache_Access := new KeylessBasicArrayListCache;
   begin
      KeylessBasicArrayListCache_Package.Initialize (This.all);
      return This;
   end Create;

   function get (This : in out KeylessBasicArrayListCache) return BasicArrayList_Access is
      list : BasicArrayList_Access;
   begin
        begin
            if (This.index) >= (This.list.size) then
                KeylessBasicArrayListCache'Class (This).addDefault;
            end if;
            list := BasicArrayList_Access (KeylessBasicArrayListCache'Class (This).getAt (Java_Post_Increment (This.index)));
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, KeylessBasicArrayListCache_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            return This.basicArrayListUtil.getImmutableInstance;
                end;
        end;
   end get;

   procedure clear (This : in out KeylessBasicArrayListCache) is
      basicArrayList : BasicArrayList_Access;
      index : Integer;
   begin
        IndexedBasicArrayListCache (This).clear;
        basicArrayList := null;
        for index in reverse 0 .. (This.list.size) - (1) loop
            basicArrayList := (BasicArrayList_Access (This.list.objectArray (index)));
            basicArrayList.clear;
        end loop;
   end clear;

   function log (This : in out KeylessBasicArrayListCache) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      S_LABEL : Unbounded_String;
      basicArrayList : BasicArrayList_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("S: "));
        stringBuffer.appendint (This.list.size);
        S_LABEL := To_Unbounded_String (" s: ");
        basicArrayList := null;
        for index in reverse 0 .. (This.list.size) - (1) loop
            stringBuffer.append (S_LABEL);
            basicArrayList := (BasicArrayList_Access (This.list.objectArray (index)));
            stringBuffer.appendint (basicArrayList.size);
        end loop;
        return stringBuffer.toString;
   end log;

end org.allbinary.logic.util.cache.KeylessBasicArrayListCache_Package;


