cdef extern from "ants-api.h":
    KANTSStatus k_ants_init(char * bus, uint8_t primary, uint8_t secondary, uint8_t ant_count, uint32_t timeout)
    void k_ants_terminate(void)
    KANTSStatus k_ants_configure(KANTSController config)
    KANTSStatus k_ants_reset(void)
    KANTSStatus k_ants_arm(void)
    KANTSStatus k_ants_disarm(void)
    KANTSStatus k_ants_deploy(KANTSAnt antenna, bool override, uint8_t timeout)
    KANTSStatus k_ants_auto_deploy(uint8_t timeout)
    KANTSStatus k_ants_cancel_deploy(void)
    KANTSStatus k_ants_get_deploy_status(uint16_t * resp)
    KANTSStatus k_ants_get_uptime(uint32_t * uptime)
    KANTSStatus k_ants_get_system_telemetry(ants_telemetry * telem)
    KANTSStatus k_ants_get_activation_count(KANTSAnt antenna, uint8_t * count)
    KANTSStatus k_ants_get_activation_time(KANTSAnt antenna, uint16_t * time)
    KANTSStatus k_ants_watchdog_kick(void)
    KANTSStatus k_ants_watchdog_start(void)
    KANTSStatus k_ants_watchdog_stop(void)
    KANTSStatus k_ants_passthrough(const uint8_t * tx, int tx_len, uint8_t * rx,int rx_len)

def py_hello(name: bytes) -> None:
    hello(name)