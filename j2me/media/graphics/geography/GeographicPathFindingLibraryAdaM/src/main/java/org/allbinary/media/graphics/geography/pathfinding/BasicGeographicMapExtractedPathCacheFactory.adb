--  Generated Code Do Not Modify


with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package; use org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package body org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package is

   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out BasicGeographicMapExtractedPathCacheFactory'Class) is
   begin
      null;
      This.maxConcurrentPaths := 0;
      This.maxPaths := 0;
   end Initialize_Fields;


   function getInstance return BasicGeographicMapExtractedPathCacheFactory_Access is
   begin
        return BasicGeographicMapExtractedPathCacheFactory_Access (BasicGeographicMapExtractedPathCacheFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out BasicGeographicMapExtractedPathCacheFactory'Class) is
   begin
      BaseBasicArrayListCache_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicGeographicMapExtractedPathCacheFactory_Access is
      This : constant BasicGeographicMapExtractedPathCacheFactory_Access := new BasicGeographicMapExtractedPathCacheFactory;
   begin
      BasicGeographicMapExtractedPathCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BasicGeographicMapExtractedPathCacheFactory; maxConcurrentPaths : Integer; maxPaths : Integer) is
      index : Integer;
   begin
        if (maxConcurrentPaths) /= (This.maxConcurrentPaths) then
            for index in reverse This.maxConcurrentPaths .. maxConcurrentPaths loop
                This.list.add (Java_Object_Access (BasicArrayListS_Package.Create (maxPaths)));
            end loop;
            This.maxConcurrentPaths := maxConcurrentPaths;
        end if;
        This.maxPaths := maxPaths;
   end init;

   function getPath (This : in out BasicGeographicMapExtractedPathCacheFactory) return BasicArrayList_Access is
   begin
        if (This.list.size) > (0) then
            return BasicArrayList_Access (This.list.removeAt (0));
        else
            return BasicArrayList_Access (BasicArrayListS_Package.Create (This.maxPaths));
        end if;
   end getPath;

   procedure release (This : in out BasicGeographicMapExtractedPathCacheFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        list.clear;
        This.list.add (Java_Object_Access (list));
   end release;

begin
   null;
   instance := BasicGeographicMapExtractedPathCacheFactory_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package;


