#include "script_component.hpp"

EXIT_IF_NOT_ARCMF;

ADDON = false;

#include "XEH_PREP.hpp"

ADDON = true;

GVAR(isSpectating) = false;

call FUNC(setupEnvironment);
