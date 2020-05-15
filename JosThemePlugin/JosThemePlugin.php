<?php


namespace JosThemePlugin;

use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context\ActivateContext;
use Shopware\Components\Plugin\Context\DeactivateContext;
use Shopware\Components\Plugin\Context\InstallContext;
use Shopware\Components\Plugin\Context\UninstallContext;
use Shopware\Components\Plugin\Context\UpdateContext;

class JosThemePlugin extends Plugin
{


    /**
     * @var array
     */
    private $scheduled = [];


    /**
     * {@inheritdoc}
     */
    public function install(InstallContext $context)
    {

        $context->scheduleClearCache([InstallContext::CACHE_LIST_DEFAULT]);
    }

    /**
     * {@inheritdoc}
     */
    public function update(UpdateContext $context)
    {

        $context->scheduleClearCache([InstallContext::CACHE_LIST_DEFAULT]);
    }

    /**
     * {@inheritdoc}
     */
    public function uninstall(UninstallContext $context)
    {

        $context->scheduleClearCache([InstallContext::CACHE_LIST_DEFAULT]);
    }

    /**
     * {@inheritdoc}
     */
    public function activate(ActivateContext $context)
    {

        $context->scheduleClearCache(InstallContext::CACHE_LIST_DEFAULT);
    }

    /**
     * {@inheritdoc}
     */
    public function deactivate(DeactivateContext $context)
    {

        $context->scheduleClearCache([InstallContext::CACHE_LIST_DEFAULT]);
    }


    /**
     * @param string $message
     */
    public function scheduleMessage($message)
    {
        $this->scheduled['message'] = $message;
    }

    /**
     * Adds the defer task to clear the frontend cache
     *
     * @param string[] $caches
     */
    public function scheduleClearCache(array $caches)
    {
        if (!array_key_exists('cache', $this->scheduled)) {
            $this->scheduled['cache'] = [];
        }
        $this->scheduled['cache'] = array_values(array_unique(array_merge($this->scheduled['cache'], $caches)));
    }


}