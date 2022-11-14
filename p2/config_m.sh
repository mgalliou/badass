for container in $(docker ps -q); do
	case $(docker exec $container hostname) in
		router_edhommee-1)
			docker exec $container bash -c "$(cat router_edhommee-1_m)"
			;;
		router_edhommee-2)
			docker exec $container bash -c "$(cat router_edhommee-2_m)"
			;;
		host_edhommee-1)
			docker exec $container sh -c "$(cat host_edhommee-1)"
			;;
		host_edhommee-2)
			docker exec $container sh -c "$(cat host_edhommee-2)"
			;;
	esac
done
