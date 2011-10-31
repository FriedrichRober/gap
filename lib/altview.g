BIND_GLOBAL("ORIGINAL_VIEW_OBJ", ViewObj);

BindGlobal("ViewSharedObj", function(obj)
  local l;
  l := TRYLOCK(obj);
  ORIGINAL_VIEW_OBJ(obj);
  if l <> fail then
    UNLOCK(l);
  fi;
end);

BindGlobal("ViewShared", function(obj)
  ViewSharedObj(obj);
  Print("\n");
end);

BindGlobal("UNSAFE_VIEW_OBJ", function(obj)
  local copy;
  DISABLE_GUARDS := true;
  copy := DEEP_COPY_OBJ(obj);
  DISABLE_GUARDS := false;
  ORIGINAL_VIEW_OBJ(copy);
end);

BindGlobal("UNSAFE_VIEW", function(obj)
  UNSAFE_VIEW_OBJ(obj);
  Print("\n");
end);

