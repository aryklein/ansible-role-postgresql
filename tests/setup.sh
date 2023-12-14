#/bin/bash

# install the environment for testing
function install_env() {
    INVETORY_FILE=.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory

    vagrant up
    echo "[pg_test]" >> $INVETORY_FILE
    echo "test_vm_1" >> $INVETORY_FILE
    echo "test_vm_2" >> $INVETORY_FILE
}

# clean the environment
function clean_env() {

    vagrant destroy -f
    rm -rf .vagrant
}

# main
case "$1" in
    install)
        install_env ${PACKAGES[@]}
        ;;
    clean)
        clean_env ${PACKAGES[@]}
        ;;
    *)
        echo "Usage: $0 [install|clean]"
esac
