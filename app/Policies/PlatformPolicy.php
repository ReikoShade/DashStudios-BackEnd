<?php

namespace App\Policies;

use App\Models\Platform;
use App\Models\Role;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class PlatformPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(?User $user): bool
    {
        return true;
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(?User $user, Platform $platform): bool
    {
        return true;
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->roles->containsStrict('id', Role::ID_ADMIN);
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Platform $platform): bool
    {
        return $user->roles->containsStrict('id', Role::ID_ADMIN);
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Platform $platform): bool
    {
        return $user->roles->containsStrict('id', Role::ID_ADMIN);
    }

    /**
     * Determine whether the user can restore the model.
     */
    public function restore(User $user, Platform $platform): bool
    {
        return $user->roles->containsStrict('id', Role::ID_ADMIN);
    }

    /**
     * Determine whether the user can permanently delete the model.
     */
    public function forceDelete(User $user, Platform $platform): bool
    {
        return $user->roles->containsStrict('id', Role::ID_ADMIN);
    }
}
