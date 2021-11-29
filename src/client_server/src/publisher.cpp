#include "ros/ros.h"
#include "my_service/roulette.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv)
{
 ros::init(argc, argv, "add_publisher");
 ros::init(argc, argv, "talker");
 ros::NodeHandle n;
 ros::ServiceClient client = n.serviceClient<my_service::roulette>("play_roulette");
 ros::Publisher chatter = n.advertise<std_msgs::String>("chatter", 1000);
 my_service::roulette srv;
 
 ros::Rate loop_rate(50);
 
 while (ros::ok())
 {
  int a;
  std::string b;
  std::cout<<"input number:";
  std::cin>>a;
  std::cout<<"input color:";
  std::cin>>b;
  
  srv.request.number = a;
  srv.request.color = b;
  client.call(srv);
  
  
  std_msgs::String msg;
  std::stringstream ss;
  if(srv.response.result == true)
  {
   ss << "win";
  }
  else
  {
   ss << "lose";
  }
  
  msg.data = ss.str();
  chatter.publish(msg);
  ros::spinOnce();
  loop_rate.sleep();
 }
 
 return 0;
}
