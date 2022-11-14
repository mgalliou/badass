for container in $(docker ps -q); do
	case $(docker exec $container hostname) in
		router_mgalliou-1)
			docker exec $container bash -c "$(cat router_mgalliou-1)"
			;;
		router_mgalliou-2)
			docker exec $container bash -c "$(cat router_mgalliou-2)"
			;;
		router_mgalliou-3)
			docker exec $container bash -c "$(cat router_mgalliou-3)"
			;;
		router_mgalliou-4)
			docker exec $container bash -c "$(cat router_mgalliou-4)"
			;;
		host_mgalliou-1)
			docker exec $container sh -c "$(cat host_mgalliou-1)"
			;;
		host_mgalliou-2)
			docker exec $container sh -c "$(cat host_mgalliou-2)"
			;;
		host_mgalliou-3)
			docker exec $container sh -c "$(cat host_mgalliou-3)"
			;;
	esac
done
