// Chris Kemerait
// StateM.cpp
// member function definitions for Homework2b.cpp
	
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//procedures
	using namespace::std;
//class libraries
	#include "Value.h"
	#include "Weather.h"
	#include "Month.h"
	#include "Year.h"
	#include "City.h"
	#include "State.h"

//string word;

void State::setlabel(string word)
{
	label = word;
		
}

string State::getlabel()
{
	return label;		
}

void State::setclabel(int alpha, string word)
{
	if(alpha < 50 && alpha > -1)
		cities[alpha].setlabel(word);
		
}

string State::getclabel(int alpha)
{
	if(alpha < 50 && alpha > -1)
		return cities[alpha].getlabel();
	else
		return "What?";
}

void State::setylabel(int alpha, int beta, string word)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			cities[alpha].setylabel(beta, word);
		
}

string State::getylabel(int alpha, int beta)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			return cities[alpha].getylabel(beta);
		else
			return "What?";
	else
		return "What?";
}

void State::setywlabel(int alpha, int beta, int chi, string word)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 3 && chi > -1)
				cities[alpha].setywlabel(beta, chi, word);
		
}

string State::getywlabel(int alpha, int beta, int chi)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 3 && chi > -1)
				return cities[alpha].getywlabel(beta, chi);
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}

void State::setyvlabel(int alpha, int beta, int chi, int delta, string word)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 3 && chi > -1)
				if(delta < 6 && delta > -1)
					cities[alpha].setyvlabel(beta, chi, delta, word);
		
}

string State::getyvlabel(int alpha, int beta, int chi, int delta)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 3 && chi > -1)
				if(delta < 6 && delta > -1)
					return cities[alpha].getyvlabel(beta, chi, delta);
				else
					return "What?";
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}

void State::setmlabel(int alpha, int beta, int chi, string word)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 12 && chi > -1)
				cities[alpha].setmlabel(beta, chi, word);
		
}

string State::getmlabel(int alpha, int beta, int chi)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 12 && chi > -1)
				return cities[alpha].getmlabel(beta, chi);
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}

void State::setmwlabel(int alpha, int beta, int chi, int delta, string word)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 12 && chi > -1)
				if(delta < 3 && delta > -1)
					cities[alpha].setmwlabel(beta, chi, delta, word);
}

string State::getmwlabel(int alpha, int beta, int chi, int delta)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 12 && chi > -1)
				if(delta < 3 && delta > -1)
					return cities[alpha].getmwlabel(beta, chi, delta);
				else
					return "What?";
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}

void State::setmvlabel(int alpha, int beta, int chi, int delta, int epsi, string word)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 12 && chi > -1)
				if(delta < 3 && delta > -1)
					if(epsi < 6 && epsi > -1)
						cities[alpha].setmvlabel(beta, chi, delta, epsi, word);
}

string State::getmvlabel(int alpha, int beta, int chi, int delta, int epsi)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 12 && chi > -1)
				if(delta < 3 && delta > -1)
					if(epsi < 6 && epsi > -1)
						return cities[alpha].getmvlabel(beta, chi, delta, epsi);
					else
						return "What?";
				else
					return "What?";
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}

void State::setywvalue(int alpha, int beta, int chi, int delta, double epsi)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 3 && chi > -1)
				if(delta < 6 && delta > -1)
					cities[alpha].setyears(beta, chi, delta, epsi);
}

double State::getywvalue(int alpha, int beta, int chi, int delta)
{
		if(alpha < 50 && alpha > -1)
			if(beta < 3 && beta > -1)
				if(chi < 3 && chi > -1)
					if(delta < 6 && delta > -1)
						return cities[alpha].getyears(beta, chi, delta);
					else
						return 0;
				else
					return 0;
			else
				return 0;
		else
			return 0;

}

void State::setmwvalue(int alpha, int beta, int chi, int delta, int epsi, double fi)
{
	if(alpha < 50 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 12 && chi > -1)
				if(delta < 3 && delta > -1)
					if(epsi < 6 && epsi > -1)
						cities[alpha].setmonths(beta, chi, delta, epsi, fi);
}

double State::getmwvalue(int alpha, int beta, int chi, int delta, int epsi)
{
		if(alpha < 50 && alpha > -1)
			if(beta < 3 && beta > -1)
				if(chi < 12 && chi > -1)
					if(delta < 3 && delta > -1)
						if(epsi < 6 && epsi > -1)
							return cities[alpha].getmonths(beta, chi, delta, epsi);
						else
							return 0;
					else
						return 0;
				else
					return 0;
			else
				return 0;
		else
			return 0;

}