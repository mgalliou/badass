for container in $(docker ps -q); do
	case $(docker exec $container hostname) in
		router_mgalliou-1)
			docker exec $container bash -c "$(cat router_mgalliou-1_m)"
			;;
		router_mgalliou-2)
			docker exec $container bash -c "$(cat router_mgalliou-2_m)"
			;;
		host_mgalliou-1)
			docker exec $container sh -c "$(cat host_mgalliou-1)"
			;;
		host_mgalliou-2)
			docker exec $container sh -c "$(cat host_mgalliou-2)"
			;;
	esac
done
