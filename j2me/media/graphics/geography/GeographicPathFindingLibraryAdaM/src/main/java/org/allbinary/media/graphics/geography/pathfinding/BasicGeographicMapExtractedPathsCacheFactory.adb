--  Generated Code Do Not Modify


package body org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package is

   procedure Initialize_Fields (This : in out BasicGeographicMapExtractedPathsCacheFactory'Class) is
   begin
      null;
      This.maxConcurrentPaths := 0;
      This.maxPaths := 0;
   end Initialize_Fields;


   function getInstance return BasicGeographicMapExtractedPathsCacheFactory_Access is
   begin
        return BasicGeographicMapExtractedPathsCacheFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicGeographicMapExtractedPathsCacheFactory'Class) is
   begin
      BaseBasicArrayListCache_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicGeographicMapExtractedPathsCacheFactory_Access is
      This : constant BasicGeographicMapExtractedPathsCacheFactory_Access := new BasicGeographicMapExtractedPathsCacheFactory;
   begin
      BasicGeographicMapExtractedPathsCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BasicGeographicMapExtractedPathsCacheFactory; maxConcurrentPaths : Integer; maxPaths : Integer) is
      index : Integer;
   begin
        if (maxConcurrentPaths) /= (This.maxConcurrentPaths) then
            for index in reverse This.maxConcurrentPaths .. maxConcurrentPaths loop
                This.list.add (BasicArrayListS_Package.Create (maxPaths));
            end loop;
            This.maxConcurrentPaths := maxConcurrentPaths;
        end if;
        This.maxPaths := maxPaths;
   end init;

   function getPaths (This : in out BasicGeographicMapExtractedPathsCacheFactory) return BasicArrayList_Access is
   begin
        if (This.list.size) > (0) then
            return BasicArrayList_Access (This.list.removeAt (0));
        else
            return BasicArrayListS_Package.Create (This.maxPaths);
        end if;
   end getPaths;

   procedure release (This : in out BasicGeographicMapExtractedPathsCacheFactory; list : BasicArrayList_Access) is
      index : Integer;
   begin
        for index in reverse 0 .. (list.size) - (1) loop
            BasicGeographicMapExtractedPathCacheFactory_Package.getInstance.release (BasicArrayList_Access (list.get (index)));
        end loop;
        list.clear;
        This.list.add (list);
   end release;

begin
   null;
   instance := BasicGeographicMapExtractedPathsCacheFactory_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package;


