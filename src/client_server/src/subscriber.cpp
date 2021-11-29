#include "ros/ros.h"
#include "my_service/roulette.h"
#include <string>



bool add(my_service::roulette::Request &req, my_service::roulette::Response &res)
{
 int nmbr;
 int clr;
 std::string ans;
 
 nmbr = rand() %37;
 
 if(req.number == nmbr)
  {
   res.result = true;
  }
  else 
  {
   res.result = false;
  }
 //ROS_INFO("request: %d, %s", req.number, req.color);
 //ROS_INFO("sending back responce:[%c]", ans);
 return 1;
}
 
 
int main(int argc, char **argv)
{
 ros::init(argc, argv, "play_rouette_server");
 ros::NodeHandle n;
 
 ros::ServiceServer service = n.advertiseService("play_roulette", add);
 ROS_INFO("Ready to play");
 ros::spin();
 
 return 0;
}
